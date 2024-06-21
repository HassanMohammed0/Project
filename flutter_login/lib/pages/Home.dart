import 'package:flutter/material.dart';
import 'package:flutter_login/pages/HomePage.dart';
import 'package:flutter_login/pages/Problemlist.dart';
import 'package:flutter_login/pages/codeTry.dart';
import 'package:flutter_login/pages/learn.dart';
import 'package:flutter_login/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        backgroundColor: Colors.green,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Column(children: [CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png") ,radius:50,)]),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                
              ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                
              ),
            ],
          ),
        ),
      ),
      //
      appBar: AppBar(
        title: Text(pagesTitle[buttomBarIndex]),
        backgroundColor: Colors.green,
        actions: [SvgPicture.asset('assets/icons/facebook.svg')],
      ),
      body: IndexedStack(
        index: buttomBarIndex,
        children: pages,
      ),//end of appbar
      //start of bottom bar
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.green, // Set the background color
          ),
          child: BottomNavigationBar(
            currentIndex: buttomBarIndex,
            //show the content of differnt 5 icons pages
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

              // Handle tap on the item at the given index
              /*  if (index == 0) {
                  // Navigate to the "/profile" page
                  Navigator.pushNamed(context, "/aboutus");
                } else if (index == 1) {
                  // Navigate to the "learn" screen
                  Navigator.pushNamed(context, "/homepage");
                } else if (index == 2) {
                  // Navigate to the "home" screen
                  Navigator.pushNamed(context, "/aboutus");
                } else if (index == 3) {
                  // Navigate to the "tryCode" screen
                  Navigator.pushNamed(context, "/homepage");
                } else if (index == 4) {
                  // Navigate to the "aboutUs" screen
                  Navigator.pushNamed(context, "/aboutus");
                } */
            },
          )),
    );
  }
}
