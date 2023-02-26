import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/rounded_button.dart';

class VerifyRecoveryPassphraseScreen extends StatelessWidget {
  const VerifyRecoveryPassphraseScreen({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Verify recovery passphrase backup',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Spacer(),
              Text(
                'Select word #21',
                style: TextStyle(
                  color: Color(0xFFE0FFFF),
                  fontSize: 16,
                ),
              ),
              selectWordsBar(
                title1: 'six',
                title2: 'amount',
                title3: 'brand',
              ),
              SizedBox(height: 30),
              Text(
                'Select word #25',
                style: TextStyle(
                  color: Color(0xFFE0FFFF),
                  fontSize: 16,
                ),
              ),
              selectWordsBar(
                title1: 'abstract',
                title2: 'body',
                title3: 'keen',
              ),
              SizedBox(height: 30),
              Text(
                'Select word #15',
                style: TextStyle(
                  color: Color(0xFFE0FFFF),
                  fontSize: 16,
                ),
              ),
              selectWordsBar(
                title1: 'orange',
                title2: 'rude',
                title3: 'category',
              ),
              SizedBox(height: 30),
              Text(
                'Select word #17',
                style: TextStyle(
                  color: Color(0xFFE0FFFF),
                  fontSize: 16,
                ),
              ),
              selectWordsBar(
                title1: 'dawn',
                title2: 'indoor',
                title3: 'prize',
              ),
              SizedBox(height: 30),
              RoundedButton(
                  text: 'Next', press: () {}, fontSize: 16, verticalPadding: 15)
            ],
          ),
        ),
      ),
    );
  }
}

class selectWordsBar extends StatelessWidget {
  String title1, title2, title3;
  selectWordsBar(
      {required this.title1, required this.title2, required this.title3});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        SelectPassphraseCard(title: title1),
        SelectPassphraseCard(title: title2),
        SelectPassphraseCard(title: title3),
      ],
    ));
  }
}

class SelectPassphraseCard extends StatelessWidget {
  final String title;
  SelectPassphraseCard({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      height: 40,
      width: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style:
            TextStyle(color: Color(0xFF12153D).withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
