// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on LoginViewModelBase, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: 'LoginViewModelBase.state'))
          .value;

  final _$responseAtom = Atom(name: 'LoginViewModelBase.response');

  @override
  String get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(String value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  final _$canNavigateAtom = Atom(name: 'LoginViewModelBase.canNavigate');

  @override
  bool get canNavigate {
    _$canNavigateAtom.reportRead();
    return super.canNavigate;
  }

  @override
  set canNavigate(bool value) {
    _$canNavigateAtom.reportWrite(value, super.canNavigate, () {
      super.canNavigate = value;
    });
  }

  final _$isValidEmailAtom = Atom(name: 'LoginViewModelBase.isValidEmail');

  @override
  bool get isValidEmail {
    _$isValidEmailAtom.reportRead();
    return super.isValidEmail;
  }

  @override
  set isValidEmail(bool value) {
    _$isValidEmailAtom.reportWrite(value, super.isValidEmail, () {
      super.isValidEmail = value;
    });
  }

  final _$emailErrorAtom = Atom(name: 'LoginViewModelBase.emailError');

  @override
  String get emailError {
    _$emailErrorAtom.reportRead();
    return super.emailError;
  }

  @override
  set emailError(String value) {
    _$emailErrorAtom.reportWrite(value, super.emailError, () {
      super.emailError = value;
    });
  }

  final _$_loginFutureAtom = Atom(name: 'LoginViewModelBase._loginFuture');

  @override
  ObservableFuture<UserCredential> get _loginFuture {
    _$_loginFutureAtom.reportRead();
    return super._loginFuture;
  }

  @override
  set _loginFuture(ObservableFuture<UserCredential> value) {
    _$_loginFutureAtom.reportWrite(value, super._loginFuture, () {
      super._loginFuture = value;
    });
  }

  final _$signInAsyncAction = AsyncAction('LoginViewModelBase.signIn');

  @override
  Future signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  final _$LoginViewModelBaseActionController =
      ActionController(name: 'LoginViewModelBase');

  @override
  dynamic validateData() {
    final _$actionInfo = _$LoginViewModelBaseActionController.startAction(
        name: 'LoginViewModelBase.validateData');
    try {
      return super.validateData();
    } finally {
      _$LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
response: ${response},
canNavigate: ${canNavigate},
isValidEmail: ${isValidEmail},
emailError: ${emailError},
state: ${state}
    ''';
  }
}
