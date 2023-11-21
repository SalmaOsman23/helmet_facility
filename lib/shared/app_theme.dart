import 'package:flutter/material.dart';

abstract class AppTheme{

  static ThemeData theme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff212121),
        selectedItemColor: Colors.yellow,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 27)),
  );

}