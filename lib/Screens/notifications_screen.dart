import 'package:crowntium/Widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DAE98),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1DAE98),
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(15.0, 0.0, 0.0),
          child: Text(
            "Notifications",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 5),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('images/notification_menu.png'),
            ),
          ),
        ],
      ),
      body: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/notification_pop_up.png',
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
                      Container(
                        width: 260,
                        child: Text(
                          'Your recent transactions, asset requests and other notifications will appear here',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFE1E1E1),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      bottomNavigationBar: Bottom_NavBar(),
    );
  }
}
