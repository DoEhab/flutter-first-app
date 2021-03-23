import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/services/login_service.dart';
import 'package:flutter_firebase_auth/services/login_service_impl.dart';
import 'package:mobx/mobx.dart';

part 'login_view_model.g.dart';

class LoginViewModel = LoginViewModelBase with _$LoginViewModel;

enum StoreState { loading, loaded }

abstract class LoginViewModelBase with Store {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginService = LoginServiceImpl();
  @observable
  String response = '';

  @observable
  bool canNavigate = false;

  @observable
  bool isValidEmail = true;

  @observable
  String emailError = '';

  @observable
  ObservableFuture<UserCredential> _loginFuture;
  
  String loadingState;
   bool showLoadIndicator;
  emailValidator() {
    isValidEmail = emailController.text.length > 5 &&
        EmailValidator.validate(emailController.text);
  }

  // @computed
  // getLoadingState(){
  //   loadingState == StoreState.loading.toString()? showLoadIndicator = true: showLoadIndicator = false;
  // }

  @computed
  StoreState get state {
    if (_loginFuture == null ||
        _loginFuture.status == FutureStatus.rejected) {
      return StoreState.loaded;
    }
    return _loginFuture.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }


  @action
  validateData() {
    emailValidator();
  }

  updateData(UserCredential value) {
    response = value.user.email;
    canNavigate = true;
  }

  @action
  signIn() async {
    validateData();
    if (isValidEmail) {
      loginService
          .login(emailController.text, passwordController.text)
          .then((value) => {updateData(value)})
          .onError((error, stackTrace) => {response = error.toString()});
    }
  }
}
