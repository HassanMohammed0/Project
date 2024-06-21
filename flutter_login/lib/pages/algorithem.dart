import 'package:flutter/material.dart';

class Algorithem extends StatelessWidget {
  const Algorithem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CodeCraft"),
          backgroundColor: Color.fromARGB(255, 9, 150, 107),
        ),
        body: ListView(
          
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.green, // Set the background color
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Learn',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.code),
                label: 'Try Code',
              ),
            BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: 'About Us',
    ),
  ],
  onTap: (int index) {
    // Handle tap on the item at the given index
    if (index == 0) {
      // Navigate to the "/profile" page
      Navigator.pushNamed(context, "/aboutus");
    }else if (index == 1) {
      // Navigate to the "learn" screen
      Navigator.pushNamed(context, "/homepage");
    } else if (index == 2) {
      // Navigate to the "home" screen
      Navigator.pushNamed(context, "/aboutus");
    }else if (index == 3) {
      // Navigate to the "tryCode" screen
      Navigator.pushNamed(context, "/homepage");
    } else if (index == 4) {
      // Navigate to the "aboutUs" screen
      Navigator.pushNamed(context, "/aboutus");
    }
  },
)
        ),
      ),
    );
  }
}