import 'package:crowntium/Screens/add_or_skip_account.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/bottom_nav_bar.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class CreateAnAccount extends StatefulWidget {
  @override
  _CreateAnAccountState createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF1DAE98),
          leading: Container(),
          actions: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20, right: 215),
                child: Text(
                  'Accounts',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ]),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white60,
                  size: 50,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'You need to create an account to start transacting your assets.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE1E1E1),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: RoundedButton(
                    text: 'Create New Account',
                    press: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AddOrSkipAccount(),
                    ),
                  );
                    },
                    fontSize: 16,
                    verticalPadding: 15),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bottom_NavBar(),
    );
  }
}
