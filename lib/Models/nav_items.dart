
import 'package:crowntium/Screens/create_an_account.dart';
import 'package:crowntium/Screens/notifications_screen.dart';
import 'package:crowntium/Screens/user_contacts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class NavItem {
  final int id;
  final String icon;
  final Widget destination;
  NavItem({required this.id, required this.icon, required this.destination});

  bool destinationChecker(){
    // ignore: unnecessary_null_comparison
    if(destination!=null) {
      return true;
    }
    return false;
  }

}

class NavItems extends ChangeNotifier {
  // By default first one is selected
  int? selectedIndex = 0;

  void changeNavIndex(int index){
    selectedIndex = index;
    notifyListeners();
  }

  void chnageNavIndex({int? index}) {
    selectedIndex = index;
    // if any changes made it notify widgets that use the value
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "images/accounts.png",
      destination: CreateAnAccount(),
    ),
    NavItem(
      id: 2,
      icon: "images/contacts.png",
      destination: UserContacts(),
    ),
    NavItem(
      id: 3,
      icon: "images/swap.png",
      destination: CreateAnAccount(),
    ),
    NavItem(
      id: 4,
      icon: "images/notifications.png",
      destination: NotificationsScreen(),
    ),
    NavItem(
      id: 5,
      icon: "images/settings.png",
      destination: CreateAnAccount(),
    ),
  ];
}