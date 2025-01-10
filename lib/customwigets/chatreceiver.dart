import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/Colors.dart';
import '../Constants/imagespath.dart';

Widget chatreceiver(BuildContext context){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      SvgPicture.asset(AssetsPaths.personnimage, height: 25.25, width: 25.25,),
      Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Container(
          width: 157,
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Jitesh Kumar", style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: primary,
                      fontWeight: FontWeight.w700
                  ),),
                  Text("This is a test messagedhgdhgdghdghd",
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.poppins(
                      fontSize: 12.62,
                      color: primary,
                      fontWeight: FontWeight.w400,
                    ),)
                ],
              ),
            ),
          ),
        ),
      )
    ],
  );
}