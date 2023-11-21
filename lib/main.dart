import 'package:flutter/material.dart';

import 'home_screen/home.dart';
import 'login_screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.routeName: (context) => Home(),
        Login.routeName: (context) => Login()
      },
      initialRoute: Login.routeName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xff212121),
        ),
      ),
    );
  }
}
