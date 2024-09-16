import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';

class MyMessage extends StatelessWidget {
  MyMessage({super.key, required this.messageText});

  String messageText;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(right: 20, top: 40),
          decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.sizeOf(context).width * 0.50,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: BoldText(
              text: messageText,
              color: Colors.white,
            ),
          ),
        ));
  }
}
