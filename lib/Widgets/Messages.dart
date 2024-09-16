import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';
import 'package:whatsapp_clone2/Widgets/LightText.dart';
import 'package:whatsapp_clone2/Widgets/contacts.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: contacts.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contacts[index]['profilePic']),
            ),
            title: BoldText(
              text: contacts[index]['name'],
              color: Colors.white,
            ),
            subtitle: LightText(
              text: contacts[index]['message'],
              color: Colors.white,
              size: 15,
            ),
            trailing: LightText(
              text: contacts[index]['time'],
              size: 15,
              color: Colors.white,
            ),
          );
        });
  }
}
