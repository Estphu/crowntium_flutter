import 'package:crowntium/Screens/prepare_to_write_passphrase.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class BackupYourAccountInfoScreen extends StatelessWidget {
  String desc =
      'Without your recovery passphrase, if you lose your device or delete the app, you will permanently lose access to your Crowntium account.';

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
                Icons.privacy_tip_outlined,
                size: 250,
                color: Colors.white,
              ),
              Spacer(),
              Text(
                'Back up your account using a recovery passphrase',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
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
                  text: 'I understand',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            PrepareToWritePassphraseInfoScreen(),
                      ),
                    );
                  },
                  fontSize: 16,
                  verticalPadding: 15)
            ],
          ),
        ),
      ),
    );
  }
}
