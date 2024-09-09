import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        children: [
          BoldText(text: "Web Screen"),
          Center(
            child: BoldText(text: width.toString()),
          )
        ],
      ),
    );
  }
}
