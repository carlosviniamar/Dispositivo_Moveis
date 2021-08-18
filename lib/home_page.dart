import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(title: Text('App Flutter ADS')),
      body: Center(child: CustomSwitch()),
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

class CustomSwitch extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDark,
        onChanged: (value) {
          AppController.instance
              .ChangeTheme(); //intercambiar o botão e fixar qnd trocar
        });
  }
}
