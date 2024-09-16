import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Colors/Colors.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';

class YourMessage extends StatelessWidget {
  YourMessage({super.key, required this.messageText});

  String messageText;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 40),
          decoration: BoxDecoration(
              color: messageColor, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.sizeOf(context).width * 0.50,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: BoldText(
              size: 18,
              text: messageText,
              color: Colors.white,
            ),
          ),
        ));
  }
}
