import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Widgets/MobileScreen.dart';
import 'package:whatsapp_clone2/Widgets/Responsive.dart';
import 'package:whatsapp_clone2/Widgets/WebScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Responsive(MobileScreen: MobileScreen(), WebScreen: WebScreen()));
  }
}
