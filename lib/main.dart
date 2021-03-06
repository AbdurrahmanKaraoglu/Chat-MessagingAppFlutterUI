import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/screens/welcome/welcome_screen.dart';
import 'package:flutter_chat_messaging_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messaging App',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),

      // themeMode:ThemeMode.system,
      home: const WelcomeScreen(),
    );
  }
}
