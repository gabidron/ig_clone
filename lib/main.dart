import 'package:flutter/material.dart';

import './responsive/responsize_layout_screen.dart';
import './utils/dark_theme_colors.dart';

import './responsive/web_screen_layout.dart';
import './responsive/mobile_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const Scaffold(
            body: ResponsiveLayout(
          mobileLayout: MobileScreenLayout(),
          webLayout: WebScreenLayout(),
        )));
  }
}
