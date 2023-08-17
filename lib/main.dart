import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';

import 'screens/first_screen/first_screen.dart';

void main() {
  runApp(const EasyDonateApp());
}

class EasyDonateApp extends StatelessWidget {
  const EasyDonateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donate Easily',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FirstPage(),
    );
  }
}
