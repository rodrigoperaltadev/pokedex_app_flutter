import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Pokemon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Moves",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Items",
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
