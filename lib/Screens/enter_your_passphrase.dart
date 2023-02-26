import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class EnterYourPassphrase extends StatelessWidget {
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
            child: Icon(
              Icons.more_horiz_rounded,
              size: 40.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text(
                  'Enter Your Passphrase',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextFieldForPassphrase(number: '1'),
                TextFieldForPassphrase(number: '2'),
                TextFieldForPassphrase(number: '3'),
                TextFieldForPassphrase(number: '4'),
                TextFieldForPassphrase(number: '5'),
                TextFieldForPassphrase(number: '6'),
                TextFieldForPassphrase(number: '7'),
                TextFieldForPassphrase(number: '8'),
                TextFieldForPassphrase(number: '9'),
                TextFieldForPassphrase(number: '10'),
                TextFieldForPassphrase(number: '11'),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundedButton(
                      text: 'Recover',
                      press: () {},
                      fontSize: 16,
                      verticalPadding: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldForPassphrase extends StatelessWidget {
  String number;
  TextFieldForPassphrase({required this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              number,
              style: TextStyle(
                color: Color(0xFFE0FFFF),
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xFF1DAE98),
                ),
                child: TextField(
                  cursorColor: Colors.white60,
                  autofocus: true,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
