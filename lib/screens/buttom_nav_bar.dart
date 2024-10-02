import 'package:flutter/material.dart';
import 'package:graduation_proj/core/constants/constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0XFF1A1A1A),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Constants.yellowColor,
      unselectedItemColor: Color(0XFFC6C6C6),
      currentIndex: currentIndex,
      iconSize: 22,
      onTap: onTap,
      selectedLabelStyle: const TextStyle(color: Color(0XFFC6C6C6)),
      unselectedLabelStyle: const TextStyle(color: Color(0XFFC6C6C6)),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'SEARCH',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: 'BROWSE',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark),
          label: 'WATCHED LIST',
        ),
      ],
    );
  }
}
