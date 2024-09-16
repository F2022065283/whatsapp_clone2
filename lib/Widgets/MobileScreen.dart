// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/Colors/Colors.dart';
import 'package:whatsapp_clone2/Pages/CallPage.dart';
import 'package:whatsapp_clone2/Pages/StatusPage.dart';
import 'package:whatsapp_clone2/Widgets/LightText.dart';
import 'package:whatsapp_clone2/Widgets/Messages.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({super.key});

  List<Widget> Pages = [Messages(), StatusPage(), CallPage()];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,
            appBar: AppBar(
              bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  labelColor: tabColor,
                  indicatorColor: tabColor,
                  tabs: [
                    Tab(
                      text: "CHAT",
                    ),
                    Tab(
                      text: "STATUS",
                    ),
                    Tab(
                      text: "CALL",
                    )
                  ]),
              backgroundColor: appBarColor,
              title: LightText(
                text: "Whatsapp",
                color: Colors.white,
              ),
              actions: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            body: TabBarView(children: Pages)),
      ),
    );
  }
}
