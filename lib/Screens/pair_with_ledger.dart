import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/informational_bar.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class PairWithLedgerScreen extends StatelessWidget {
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
                  Icons.account_balance_wallet_outlined,
                  size: 250,
                  color: Colors.white,
                ),
                Text(
                  'Pair with Ledger',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
                InformationalBar(
                  desc:
                      'Make sure your ledger device is on and has Bluetooth enabled.',
                  number: '1',
                ),
                SizedBox(height: 10),
                InformationalBar(
                  desc:
                      'Install the Crowntium app (version 1.2.9 or later) onto your Ledger device.',
                  number: '2',
                ),
                SizedBox(height: 10),
                InformationalBar(
                  desc: 'Open the Crowntium app on your Ledger. ',
                  number: '3',
                ),
                SizedBox(height: 10),
                InformationalBar(
                  desc: 'Make sure Bluetooth is enabled on your smartphone.',
                  number: '4',
                ),
                SizedBox(height: 10),
                RoundedButton(
                    text: 'Search for Ledger',
                    press: () {},
                    fontSize: 16,
                    verticalPadding: 15)
              ]),
        ),
      ),
    );
  }
}
