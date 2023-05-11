import 'package:flutter/material.dart';
import 'package:sprachassistent/home_page.dart';
import 'package:sprachassistent/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sprachassistent',

      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Palette.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Palette.whiteColor,
        )
      ),
      home: const HomePage(),
    );
  }
}
