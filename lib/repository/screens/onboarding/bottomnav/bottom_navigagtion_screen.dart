import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:chatapp/repository/screens/onboarding/chats/chats_screen.dart';
import 'package:chatapp/repository/screens/onboarding/contacts/contacts_screen.dart';
import 'package:chatapp/repository/screens/onboarding/more/more_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [ContactsScreen(), ChatsScreen(), MoreScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Contacts'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_sharp),
            label: 'More',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomdarkmode
            : AppColors.bottomlightmode,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.icondarkmode
              : AppColors.iconlightmode,
        ),
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
