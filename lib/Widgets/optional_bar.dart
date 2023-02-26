import 'package:flutter/material.dart';

class OptionalBar extends StatelessWidget {
  final Icon icon;
  final String title;
  final String descA;
  final Function() press;
  final String descB;
  final String descC;
  OptionalBar(
      {required this.title,
      required this.icon,
      required this.press,
      this.descA = '',
      this.descB = '',
      this.descC = ''});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: 
      Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon,
                SizedBox(width: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: descA,
                          style: TextStyle(
                            color: Color(0xFFE1E1E1),
                            height: 2,
                          )),
                      TextSpan(
                        text: descB,
                        style: TextStyle(
                          color: Color(0xFFE1E1E1),
                        ),
                      ),
                      TextSpan(
                        text: descC,
                        style: TextStyle(
                          color: Color(0xFFE1E1E1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFE1E1E1),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(
            height: 20.0,
            thickness: 1.5,
            indent: 90,
            endIndent: 30,
            color: Color(0xFFB2BEB5),
          )
        ],
      ),
    );
  }
}
