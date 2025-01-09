import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';

import '../Constants/Colors.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  List<String> names = ["rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 67,
        elevation: 20,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text(
              "APPNWEB Technologies Community",
              style: GoogleFonts.poppins(
                  fontSize: 15, color: primary, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 30,
                width: 200,
                child : ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < 5) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 2.0, right: 2.0),
                        child: SvgPicture.asset(
                          AssetsPaths.personnimage,
                          height: 20,
                          width: 20,
                        ),
                      );
                    } else {
                      return index==5? Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.transparent
                          ),
                          height: 20,
                          width: 20,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffF0F0F0),
                            child: Text("+ ${names.length-index}",
                          style: GoogleFonts.poppins(
                            color: primary,
                            fontSize: 10
                          ),
                          ),),
                        ),
                      ) : SizedBox(height: 0, width: 0,);
                    }
                    return  Row(
                      children: [


                      ],
                    );
                  },
                ),

            )
          ],
        ),
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              AssetsPaths.backicon,
              height: 50,
              width: 50,
            ),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: SvgPicture.asset(AssetsPaths.information))],
      ),
    );
  }
}
