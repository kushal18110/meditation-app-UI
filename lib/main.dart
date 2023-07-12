import 'package:flutter/material.dart';
import 'package:meditation_app_ui/pages/home_page.dart';
import 'package:meditation_app_ui/pages/music_page.dart';

import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
