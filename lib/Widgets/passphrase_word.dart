import 'package:flutter/material.dart';

class PassphraseWord extends StatelessWidget {
    String number, text;
    PassphraseWord({required this.number,required this.text});
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: [
            Text(
              number,
              style: TextStyle(
                color: Colors.white60, 
                fontSize: 16,
              ),
            ),
            SizedBox(width: 15),
            Text(
              text,
              style: TextStyle(
                color: Colors.white, 
                fontSize: 16,
              ),
            )
          ],
        ),
      );
    }
  }