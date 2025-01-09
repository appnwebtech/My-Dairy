import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/imagespath.dart';

Widget buildMeetingContainer() {
  return InkWell(
    onTap: ()=> Get.toNamed("/editmeeting"),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(1, 2),
            blurRadius: 4,
          ),
        ],
        color: Color(0xffF3F8FF),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffEAEAEA), width: 1.5),
      ),
      padding: const EdgeInsets.all(12.0), // Ensure consistent padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '07:20 PM',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xff1F2D5A),
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            color: Color(0xffEAEAEA),
          ),
          Text(
            'Discussion About delivery plugin',
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Color(0xff1F2D5A),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SvgPicture.asset(AssetsPaths.googlemeetIcon),
              SizedBox(width: 8),
              Text(
                'Google Meet',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Color(0xff1F2D5A),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(AssetsPaths.peopleIcon),
              SizedBox(width: 8),
              Text(
                'Mr. Shivam Gupta',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Color(0xff1F2D5A),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
