import 'package:flutter/material.dart';
import 'package:ola/home_page.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  // 1 digitar stl, estático, carregou uma vez permanece imutável
  final String title; //2  adicionar titulo

  const AppWidget({Key? key, this.title: ''})
      : super(key: key); // 2 adicionar titulo

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.green,
              brightness: AppController.instance.isDark
                  ? Brightness.dark
                  : Brightness.light),
          home: HomePage(),
        );
      },
    );
  }
}
