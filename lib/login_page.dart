import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _buildIcon() {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(
            'Back',
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 75),
      child: RichText(
        text: TextSpan(
          text: 'FL',
          style: TextStyle(
            fontSize: 25,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
                text: 'UT',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            TextSpan(
                text: 'TER',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange))
          ],
        ),
      ),
    );
  }

  Widget _buildLabel({String text}) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTextFormField({bool obscureText}) {
    return Container(
      width: double.infinity,
      height: 47.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
      decoration: BoxDecoration(
        color: Colors.deepPurple[50],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          isDense: true,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 8),
        ),
        obscureText: obscureText,
      ),
    );
  }

  Widget _buildButtonLog({String text, Function callback}) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.orange,
      ),
      child: GestureDetector(
          child: Text(
            text,
            style: TextStyle(fontSize: 21, color: Colors.white),
          ),
          onTap: callback),
    );
  }

  Widget _buildTextFor() {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(top: 10, right: 20),
      child: Text(
        'Forgot Password ?',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextOr() {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 35),
          Expanded(
            child: Divider(
              thickness: 1,
            ),
          ),
          Text('   or   ', style: TextStyle(fontSize: 17)),
          Expanded(
            child: Divider(
              thickness: 1,
            ),
          ),
          SizedBox(width: 35),
        ],
      ),
    );
  }

  Widget _buildFacebook() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                color: Colors.blue,
              ),
              child: Text(
                'f',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Colors.blue[300],
                ),
                child: Text(
                  'Log in with Facebook',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget _buildTextDont() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don\'t have an account ?  ', style: TextStyle(fontSize: 17)),
          GestureDetector(
            child: Text(
              'Register',
              style: TextStyle(fontSize: 17, color: Colors.orange),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildIcon(),
            _buildText(),
            SizedBox(height: 75),
            _buildLabel(text: 'Email address'),
            _buildTextFormField(obscureText: false),
            _buildLabel(text: 'Password'),
            _buildTextFormField(obscureText: true),
            SizedBox(height: 17),
            _buildButtonLog(text: 'Login', callback: () {}),
            _buildTextFor(),
            SizedBox(height: 17),
            _buildTextOr(),
            _buildFacebook(),
            SizedBox(height: 100),
            _buildTextDont(),
          ],
        ),
      ),
    );
  }
}
