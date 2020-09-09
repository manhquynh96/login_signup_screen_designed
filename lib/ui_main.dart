import 'package:flutter/material.dart';
import 'package:login_signup_screen_designed/login_page.dart';

class UiPage extends StatefulWidget {
  @override
  _UiPageState createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  Widget _buildText() {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 150),
      child: RichText(
        text: TextSpan(
          text: 'FL',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
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
                    color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget _buildButton({String text, Function callback}) {
    return Container(
      width: double.infinity,
      height: 47.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: GestureDetector(
          child: Text(
            text,
            style: TextStyle(fontSize: 21, color: Colors.white),
          ),
          onTap: callback),
    );
  }

  Widget _buildTouchID() {
    return Container(
      child: Column(
        children: [
          Text(
            'Quick login with Touch ID',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          SizedBox(height: 30),
          Icon(
            Icons.fingerprint,
            size: 90,
            color: Colors.white,
          ),
          Text(
            'Touch ID',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        children: [
          _buildText(),
          SizedBox(height: 100),
          _buildButton(
              text: 'Login',
              callback: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              }),
          _buildButton(text: 'Register now', callback: () {}),
          SizedBox(height: 50),
          _buildTouchID(),
        ],
      ),
    );
  }
}
