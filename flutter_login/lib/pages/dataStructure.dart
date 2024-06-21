import 'package:flutter/material.dart';

class DataStructure extends StatelessWidget {
  const DataStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                  decoration: InputDecoration(
                  prefixIcon:Icon(Icons.search) ,
                  hintText: "Search",
                  border: InputBorder.none,
                fillColor: Colors.grey[200],
                filled: true),
              )),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.menu,size: 40),
              )
            ],
          )
        ]),
      ),
    );
  }
}
