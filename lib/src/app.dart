import 'package:darkmode/src/page/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lighMode,
      darkTheme: darkMode,
      home: const Home(),
    );
  }
}

ThemeData lighMode = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: TextTheme(
    titleLarge: const TextStyle(color: Color(0xff28222B)),
    titleSmall: TextStyle(color: const Color(0xff28222B).withOpacity(0.7)),
    labelMedium: const TextStyle(color: Color(0xff9279C8)),
  ),
  buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.light(primaryContainer: Color(0xff9279C8))),
  scaffoldBackgroundColor: const Color(0xffEAE8F4),
  iconTheme: const IconThemeData(color: Colors.black),
  cardTheme: const CardTheme(color: Colors.white),
  dividerTheme: const DividerThemeData(color: Color(0xffEAE8F4)),
  drawerTheme: const DrawerThemeData(backgroundColor: Color(0xffEAE8F4)),
  switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.white),
      trackColor: MaterialStateProperty.all(const Color(0xff9279C8))),
);

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: TextTheme(
    titleLarge: const TextStyle(color: Color(0xffDADADA)),
    titleSmall: TextStyle(color: const Color(0xffDADADA).withOpacity(0.7)),
    labelMedium: const TextStyle(color: Color(0xff8ABD93)),
  ),
  buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(primaryContainer: Color(0xff8ABD93))),
  scaffoldBackgroundColor: const Color(0xff28222b),
  iconTheme: const IconThemeData(color: Colors.white),
  cardTheme: const CardTheme(color: Color(0xff342C38)),
  dividerTheme: const DividerThemeData(color: Color(0xff28222b)),
  drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff28222b)),
  switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.black),
      trackColor: MaterialStateProperty.all(const Color(0xff8ABD93))),
);
