import 'package:crowntium/Widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Widgets/bottom_nav_bar.dart';

class UserContacts extends StatelessWidget {
  const UserContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1DAE98),
        leading: Container(),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 215),
            child: Text(
              'Contacts',
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Search contacts',
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFFFAF9F6),
                ),
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFAF9F6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                fillColor: Color(0xFFD1D4D4).withOpacity(0.2),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/contact_icon.png',
                        ),
                        iconSize: 150,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'You haven\'t added any contacts yet',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'You can make the process of sending assets faster by adding new contacts.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE1E1E1),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: RoundedButton(
                            text: 'Add Contact',
                            press: () {},
                            fontSize: 16,
                            verticalPadding: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottom_NavBar(),
    );
  }
}
