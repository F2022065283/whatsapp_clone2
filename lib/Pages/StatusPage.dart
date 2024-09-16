import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: BoldText(text: "Status Page"))],
      ),
    );
  }
}
