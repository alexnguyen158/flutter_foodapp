import 'package:flutter/material.dart';
import 'package:flutter_food_app/src/pages/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _checkVisibility = true;
  bool _checkConfirmVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      obscureText: _checkVisibility,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 16.0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _checkVisibility = !_checkVisibility;
            });
          },
          icon: _checkVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      obscureText: _checkConfirmVisibility,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 16.0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _checkConfirmVisibility = !_checkConfirmVisibility;
            });
          },
          icon: _checkConfirmVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100.0,
            ),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _buildUsernameTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildEmailTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildPasswordTextField(),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildConfirmPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
            ),
            Divider(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ',
                  style: TextStyle(
                    color: Color(0xFFBDC2CB),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
