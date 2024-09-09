import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
,nnn