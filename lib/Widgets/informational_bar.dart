import 'package:flutter/material.dart';

class InformationalBar extends StatelessWidget {
  String number;
  String desc;
  InformationalBar({required this.number,required this.desc});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xFFE1E1E1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 195,
            child: Text(
            desc,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          ),
          SizedBox(width: 20),
          Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFFE1E1E1),
        ),
        ],
      ),
    );
  }
}