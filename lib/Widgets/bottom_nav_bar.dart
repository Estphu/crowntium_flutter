import 'package:crowntium/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:crowntium/Models/nav_items.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class Bottom_NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFF1DAE98),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 30.0,
              color: Color(0xFF4B1A39).withOpacity(0.2),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navItems.items.length,
              (index) => buildIconNavBarItem(
                navItems.items[index].icon,
                () {
                  navItems.changeNavIndex(index);
                  if (navItems.items[index].destinationChecker()) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => navItems.items[index].destination,
                      ),
                      ModalRoute.withName("home"),
                    );
                  }
                },
                isActive: navItems.selectedIndex == index ? true : false,
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavBarItem(String icon, Function()? press,
      {bool isActive = false}) {
    return IconButton(
      onPressed: press,
      icon: Image.asset(
        icon,
        color: isActive ? Colors.white : Color(0xFFD1D4D4),
      ),
    );
  }
}
