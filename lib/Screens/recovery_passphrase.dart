import 'package:crowntium/Screens/verify_recovery_passphrase.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/passphrase_word.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class RecoveryPassphraseWordsScreen extends StatelessWidget {
  String desc =
      'Make sure to record these words in the correct order, using the corressponding numbers.';

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
    ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Recovery Passphrase',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 20),
              Container(
                height: 417.0,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5DC).withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                  child: Column(
                    children: [
                      PassphraseWord(
                        number: '1',
                        text: 'vicious',
                      ),
                      PassphraseWord(
                        number: '2',
                        text: 'defy',
                      ),
                      PassphraseWord(
                        number: '3',
                        text: 'orange',
                      ),
                      PassphraseWord(
                        number: '4',
                        text: 'indoor',
                      ),
                      PassphraseWord(
                        number: '5',
                        text: 'keen',
                      ),
                      PassphraseWord(
                        number: '6',
                        text: 'six',
                      ),
                      PassphraseWord(
                        number: '7',
                        text: 'rude',
                      ),
                      PassphraseWord(
                        number: '8',
                        text: 'child',
                      ),
                      PassphraseWord(
                        number: '9',
                        text: 'enemy',
                      ),
                      PassphraseWord(
                        number: '10',
                        text: 'sketch',
                      ),
                      PassphraseWord(
                        number: '11',
                        text: 'shop',
                      ),
                      PassphraseWord(
                        number: '12',
                        text: 'quit',
                      ),
                      PassphraseWord(
                        number: '13',
                        text: 'off',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  height: 40,
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
                  text: 'Next',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            VerifyRecoveryPassphraseScreen(),
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
