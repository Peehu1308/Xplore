import 'package:explore/club.dart';
import 'package:explore/login.dart';
import 'package:explore/profile.dart';
import 'package:flutter/material.dart';

class Taskbar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap; // Make it optional if unused

  const Taskbar({
    super.key,
    required this.currentIndex,
    this.onTap, // Changed to optional by removing 'required'
  });

  void _navigateTo(BuildContext context, int index) {
    Widget destination;

    switch (index) {
      case 0:
        destination = const Profile();
        break;
      case 1:
        destination = const ClubScreen();
        break;
      case 2:
        destination = Login();
        break;
      case 3:
        destination = const Profile();
        break;
      default:
        destination = const Profile();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) =>
          onTap != null ? onTap!(index) : _navigateTo(context, index),
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Clubs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Calender',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
