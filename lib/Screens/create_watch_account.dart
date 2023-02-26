import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class CreateWatchAccount extends StatelessWidget {
  String desc =
      'Monitor always of an account without needing a recovery passphrase. This is useful for monitoring assets that are kept in cold storage.';
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
                  Icons.remove_red_eye_outlined,
                  size: 250,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  'Watch Account',
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
                  flex: 4,
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
                Spacer(),
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
                                ' if you do not have the corresponding recovery passphrase, do not send assets to this account.',
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
                Spacer(),
                RoundedButton(
                    text: 'Create a Watch Account',
                    press: () {},
                    fontSize: 16,
                    verticalPadding: 15)
              ]),
        ),
      ),
    );
  }
}
