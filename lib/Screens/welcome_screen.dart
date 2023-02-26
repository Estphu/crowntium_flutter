import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/gradient_text.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

import 'add_or_skip_account.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      body: Container(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Image.asset(
                'images/logo.png',
                height: 250.0,
                width: 250.0,
              ),
              GradientText(
                'Still we strive',
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB78628),
                    Color(0xFFC69320),
                    Color(0xFFDBA514),
                    Color(0xFFEEB609),
                    Color(0xFFFCC201),
                  ],
                ),
              ),
              GradientText(
                'Still we rise',
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB78628),
                    Color(0xFFC69320),
                    Color(0xFFDBA514),
                    Color(0xFFEEB609),
                    Color(0xFFFCC201),
                  ],
                ),
              ),
              Spacer(),
              RoundedButton(
                  text: 'Add Account',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => AddOrSkipAccount(),
                      ),
                    );
                  },
                  fontSize: 16,
                  verticalPadding: 16),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text:
                          '       By creating an account, you agree to\nCrowntiumn\'s ',
                      style: TextStyle(
                        color: Color(0xFFE1E1E1),
                      ),
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: Color(0xFFE1E1E1),
                      ),
                    ),
                    TextSpan(
                      text:
                          'Privacy\n                                   Policy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}


