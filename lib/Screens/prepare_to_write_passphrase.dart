import 'package:crowntium/Screens/recovery_passphrase.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class PrepareToWritePassphraseInfoScreen extends StatelessWidget {
  String desc =
      'The only way to recover an Crowntium account is with this recover passphrase.';

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
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.edit_outlined,
                  size: 225,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  'Prepare to write down your recovery passphrase',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 2,
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
                Expanded(
                  flex: 3,
                  child: Container(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Warning:',
                            style: TextStyle(
                              color: Color(0xFFf50000),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Do not share this passphrase with anyone, as it grants full access to your account.',
                            style: TextStyle(
                              color: Color(0xFFf50000),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                RoundedButton(
                    text: 'I\'m ready to begin',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              RecoveryPassphraseWordsScreen(),
                        ),
                      );
                    },
                    fontSize: 16,
                    verticalPadding: 15)
              ]),
        ),
      ),
    );
  }
}
