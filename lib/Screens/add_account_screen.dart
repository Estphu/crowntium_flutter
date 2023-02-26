import 'package:crowntium/Screens/pair_with_ledger.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/optional_bar.dart';

import 'backup_your_account.dart';
import 'create_watch_account.dart';

class AddAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      appBar: AppBar(
        backgroundColor: Color(0xFF1DAE98),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Add Account',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Spacer(),
              OptionalBar(
                  title: 'Create New Account\n',
                  icon: Icon(
                    Icons.person_rounded,
                    color: Color(0xFFFAF9F6),
                    size: 44.0,
                  ),
                  descA: 'I want a new account with a\n',
                  descB: 'new address and recovery\n',
                  descC: 'passphrase',
                  press: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => BackupYourAccountInfoScreen(),
                    ),
                  );
                  },
                  ),
                  SizedBox(height: 10),
                  OptionalBar(
                  title: 'Watch Account\n',
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xFFFAF9F6),
                    size: 44.0,
                  ),
                  descA: 'I want to monitor an account\n',
                  descB: 'that\'s held in cold storage',
                  press: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CreateWatchAccount(),
                    ),
                  );
                  },
                  ),
                  SizedBox(height: 10),
                  OptionalBar(
                  title: 'Pair Ledger Device\n',
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Color(0xFFFAF9F6),
                    size: 44.0,
                  ),
                  descA: 'I want to create an account\n',
                  descB: 'that is backed by my Ledger\n',
                  descC: 'hardware wallet',
                  press: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => PairWithLedgerScreen(),
                    ),
                  );
                  },
                  ),
                  Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
