// Libary's part
// comment in every import libary 
import 'package:flutter/material.dart'; //libary to get dart language
import 'package:flutter_login/pages/Home.dart';
import 'package:flutter_login/pages/Try.dart';
import 'package:flutter_login/pages/welcome.dart'; //libary to define The class which define welcome page
import 'package:flutter_login/pages/signup.dart'; //libary to define The class which define signup page
import 'package:flutter_login/pages/login.dart'; //libary to define The class which define login page
import 'package:flutter_login/pages/ForgetPasswor.dart'; //libary to define The class which define forgetpassword page
import 'package:flutter_login/pages/HomePage.dart'; //libary to define The class which define Home page
import 'package:flutter_login/pages/profile.dart'; //libary to define The class which define profile page
import 'package:flutter_login/pages/algorithem.dart'; //libary to define The class which define algorithem page
import 'package:flutter_login/pages/chooseTrack.dart'; //libary to define The class which define chooseTrack page
import 'package:flutter_login/pages/codeTry.dart'; //libary to define The class which define codeTry page
import 'package:flutter_login/pages/dashboard.dart'; //libary to define The class which define dashboard page
import 'package:flutter_login/pages/dataStructure.dart'; //libary to define The class which define dataStructure page
import 'package:flutter_login/pages/learn.dart'; //libary to define The class which define learn page
import 'package:flutter_login/pages/Problemlist.dart'; //libary to define The class which define Problemlist page
import 'package:flutter_login/pages/problemdetail.dart'; //libary to define The class which define problemdetail page
import 'package:flutter_login/pages/problemexplain.dart'; //libary to define The class which define problemexplain page
import 'package:flutter_login/pages/problemsolve.dart'; //libary to define The class which define problemsolve page
import 'package:flutter_login/pages/sorting.dart'; //libary to define The class which define sorting page
import 'package:flutter_login/pages/AboutUs.dart'; //libary to define The class which define aboutUs page
void main() {
  runApp(const CodeCraft());
}
// let class name CodeCraft(To be fameliar with problem solving coding as handcraft)
class CodeCraft extends StatelessWidget {
  const CodeCraft({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/" ,
      routes: {
        "/" : (context) => const Welcome(), 
        "/login" : (context) => const Login(), 
        "/signup" : (context) => const Signup(), 
        "/homepage" : (context) => const HomePage(),
        "/aboutus" : (context) => const AboutUs(),
        "/codetry" : (context) => const CodeTry(),
        "/home" : (context) => const Home(),
        "/dataStructure" : (context) => const DataStructure(),
        "/sorting" : (context) => const Sorting(),
        "/profile" : (context) => const Profile(),
        "/problemsolving" : (context) => const ProblemSolving(),
        "/problemlist" : (context) => ProblemList(),
        "/problemexplain" : (context) => const ProblemExplain(),
        "/learn" : (context) => const Learn(),
        "/forgetpassword" : (context) => const ForgetPassword(),
        "/dashboard" : (context) => const Dashboard1(),
        "/choosetrack" : (context) => const ChooseTrack(),
        "/algorithem" : (context) => const Algorithem(),
        "/problemdetail" : (context) => const ProblemDetail(),
        "/try" : (context) => const LoginPage(),
      },
    );
  }
}
