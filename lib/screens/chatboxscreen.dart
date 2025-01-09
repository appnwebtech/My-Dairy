
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/Colors.dart';
import '../Constants/imagespath.dart';

class Chatboxscreen extends StatefulWidget {
  const Chatboxscreen({super.key});

  @override
  State<Chatboxscreen> createState() => _ChatboxscreenState();
}

class _ChatboxscreenState extends State<Chatboxscreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: Column(children: [
        Row(
          children: [
            Stack(
              fit: StackFit.loose,
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: (){Get.back();},
                    child: SvgPicture.asset(
                      AssetsPaths.backicon,
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 110, top: 20, right: 20),
                  child: SvgPicture.asset(
                    AssetsPaths.chatimage,
                    width: 180,
                    height: 180,
                  ),
                )
              ],
            ),

          ],
        ),
        SizedBox(height: 10,),
        Text("Chat Box", style: GoogleFonts.poppins(
          fontSize: 20,
          color: primary,
          fontWeight: FontWeight.w600
        ),),
        Text("You have 3 unread chats", style: GoogleFonts.poppins(
            fontSize: 10,
            color: Color(0xff7D7D7D),
            fontWeight: FontWeight.w600
        ),),
        Padding(
          padding: const EdgeInsets.only(left: 320.0),
          child: InkWell(
            onTap: (){Get.back();},
            child: SvgPicture.asset(
              AssetsPaths.plusIcon,
              width: 30,
              height: 30,
            ),
          ),
        ),

        Container(
          height: height - 350,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
          return Row(
            children: [
              SvgPicture.asset(AssetsPaths.personnimage),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shivam Gupta"),
                  Text("Good Thanks, Are you Available for the meeting.  We need to discuss the project.")
                ],
              ),
              Text("10:30 AM")
            ],
          );
          }),
        )

      ],))
    );
  }

}
