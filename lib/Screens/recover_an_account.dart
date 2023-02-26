import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

import 'enter_your_passphrase.dart';

class RecoverAccountScreen extends StatelessWidget {
  String desc =
      'In the following steps, you\'ll enter your 25-word recovery passphrase to recover an Crowntiumn account. Have your recovery phrase handy before you begin.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF1DAE98),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1DAE98),
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.restore_rounded,
                size: 250,
                color: Colors.white,
              ),
              Spacer(),
              Container(
                child: Text(
                  'Recover an Crowntiumn account',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 80,
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE1E1E1),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              RoundedButton(
                  text: 'Recover an Crowntium Account',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            EnterYourPassphrase(),
                      ),
                    );
                  },
                  fontSize: 16,
                  verticalPadding: 15),
            ],
          ),
        ),
      ),
    );
  }
}
