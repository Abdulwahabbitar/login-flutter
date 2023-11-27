import 'package:flutter/material.dart';
import 'package:flutter_app/register.dart';
import 'package:get/get.dart';

import 'home_page.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

Color w = Colors.white;
Color b = Colors.black;
Color g = Color(0xff24b99e);
Color gra = Color.fromARGB(255, 222, 219, 219);
Color gr = Colors.grey;

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: "/register", page: () => Register()),
        GetPage(name: "/homepage", page: () => HomePage())
      ],
      home: Login(),
    );
  }
}
