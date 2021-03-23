// Define a custom Form widget.
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_auth/navigation/Routes.dart';
import 'package:flutter_firebase_auth/screens/base_page.dart';
import 'package:flutter_firebase_auth/viewModel/login_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyCustomForm extends BasePage {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends BaseState<MyCustomForm> with BasicPage{
  final _cloudFunction = LoginViewModel();
  @override
  String barTitle() => 'My form';

  @override
  Widget body() {

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) => TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _cloudFunction.emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: _cloudFunction.isValidEmail? null :'error',
                ),
              ),
            ),
            TextField(
              obscureText: true,
              controller: _cloudFunction.passwordController,
              decoration: InputDecoration(hintText: 'password'),
              textInputAction: TextInputAction.next,
            ),
            TextButton(
                onPressed: () => {_cloudFunction.signIn()},
                child: Text('Login')),
            Observer(
              builder: (context) => Text(
                '${_cloudFunction.response}',
              ),
            ),
            Observer(
              builder: (context) {
                return _cloudFunction.canNavigate
                    ? Navigator.of(context).popAndPushNamed(Routes.secondScreen)
                    : Text('Sign in') ;
              },
            ),
            Observer(
              builder: (_) {
                if (_cloudFunction.state == StoreState.loading){
                    return Container(
                        child: SpinKitFadingCircle(
                        itemBuilder: (BuildContext context, int index) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: index.isEven ? Colors.red : Colors.green,
                            ),
                          );
                        })
                    );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }


}
