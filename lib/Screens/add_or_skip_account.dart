import 'package:crowntium/Screens/recover_an_account.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/optional_bar.dart';

import 'add_account_screen.dart';
import 'create_an_account.dart';

class AddOrSkipAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1DAE98),
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CreateAnAccount(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(top: 18, right: 25),
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the\nCrowntium Wallet',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              OptionalBar(
                icon: Icon(
                  Icons.person_add_rounded,
                  color: Color(0xFFFAF9F6),
                  size: 44.0,
                ),
                title: 'Add Account\n',
                descA: 'I want to create a new Crowntium',
                descB: '\naccount',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AddAccountScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 10),
              OptionalBar(
                icon: Icon(
                  Icons.restore_rounded,
                  color: Color(0xFFFAF9F6),
                  size: 44.0,
                ),
                title: 'Recover with passphrase\n',
                descA: 'I already have an account',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => RecoverAccountScreen(),
                    ),
                  );
                },
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text:
                          '       By creating an account, you agree to\nCrowntium\'s ',
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
      ),
    );
  }
}
