import 'package:flutter/material.dart';
import 'package:flutter_login/pages/HomePage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "About Us",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            color: Colors.amber,
            textColor: Colors.black,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("Go to About us Page"),
          ),
        )
      ],
    );
  }
}
