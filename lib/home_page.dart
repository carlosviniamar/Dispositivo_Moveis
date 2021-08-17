import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(title: Text('App Flutter ADS')),
      body: Center(
          child: GestureDetector(
              child: Text('Click $counter', style: TextStyle(fontSize: 100)),
              onTap: () {
                setState(() {
                  counter--;
                  //print(counter);
                });
              })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          setState(() {
            counter--;
            //print(counter);
          });
        },
      ),
    );
  }
}
