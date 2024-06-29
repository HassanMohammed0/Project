import 'package:flutter/material.dart';
import 'package:flutter_login/pages/HomePage.dart';
import 'package:flutter_login/pages/Problemlist.dart';
import 'package:flutter_login/pages/codeTry.dart';
import 'package:flutter_login/pages/learn.dart';
import 'package:flutter_login/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int buttomBarIndex = 2;
//coling differnt classes for pages in bottom bar
List<String> pagesTitle = [
  "Profile",
  "Learn",
  "Home",
  "Try Code",
  "Problem List",
];
List<Widget> pages = [
  const Profile(),
  const Learn(),
  const HomePage(),
  const CodeTry(),
  ProblemList(),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFF0F1929),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Column(children: [CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png"), radius: 50,)]),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text("Settings", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text("Settings", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          pagesTitle[buttomBarIndex],
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor: Color(0xFF0F1929),
        iconTheme: IconThemeData(color: Colors.white), // Set the icon color to white
      ),
      body: IndexedStack(
        index: buttomBarIndex,
        children: pages,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF0F1929), // Set the background color
        ),
        child: BottomNavigationBar(
          currentIndex: buttomBarIndex,
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
              icon: Icon(Icons.folder_open),
              label: 'Problem List',
            ),
          ],
          onTap: (int index) {
            setState(() {
              buttomBarIndex = index;
            });
          },
        ),
      ),
    );
  }
}
