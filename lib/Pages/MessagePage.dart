import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Colors/Colors.dart';
import 'package:whatsapp_clone2/Widgets/BoldText.dart';
import 'package:whatsapp_clone2/Widgets/LightText.dart';
import 'package:whatsapp_clone2/Widgets/MyMessage.dart';
import 'package:whatsapp_clone2/Widgets/YourMessage.dart';
import 'package:whatsapp_clone2/Widgets/contacts.dart';

class MessagePage extends StatefulWidget {
  MessagePage({super.key, required this.userName});

  String userName;

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            width: double.maxFinite,
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // icons
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 27,
                  ),

                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 27,
                  ),

                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  // tectformfield
                  Expanded(
                      child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: _controller,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        label: LightText(
                          text: "Enter your message",
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )),
                  // icons

                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      // add to list

                      Map<String, dynamic> map = {
                        "isMe": true,
                        "text": _controller.text,
                        "time": DateTime.now().toString()
                      };

                      setState(() {
                        messages.add(map);
                        _controller.clear();
                      });
                    },
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                )),
            backgroundColor: backgroundColor,
            centerTitle: true,
            title: BoldText(
              text: widget.userName,
              color: Colors.white,
            ),
          ),
          body: Stack(
            children: [
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image.asset(
                  "assets/backgroundImage.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: messages.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return messages[index]['isMe'] == true
                          ? MyMessage(
                              messageText: messages[index]['text'].toString())
                          : YourMessage(
                              messageText: messages[index]['text'].toString());
                    }),
              ),
            ],
          )),
    );
  }
}
