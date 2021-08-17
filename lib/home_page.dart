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
      appBar: AppBar(title: 'App ADS'),
      child: Container(
        child: Center(
            child: GestureDetector(s
                child: Text('Click $counter'),
                onTap: () {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                })),
      ),
    );
  }
}
