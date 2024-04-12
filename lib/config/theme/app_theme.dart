import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    const kseedColor = Color.fromARGB(255, 192, 48, 236);
    const kfontColor = Color(0xffEEE4B1);
    const kprimaryColor = Color(0xff5F374B);
    const kbackgroundColor = Color(0xff430A5D);
    const kappBarColor = Color.fromARGB(255, 108, 4, 139);

    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: kseedColor,
        appBarTheme: AppBarTheme(
            backgroundColor: kappBarColor,
            titleTextStyle: TextStyle(color: kfontColor)),
        scaffoldBackgroundColor: kbackgroundColor);
  }
}
