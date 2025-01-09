import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';

import '../Constants/Colors.dart';


Widget _buildCardItem(BuildContext context, {required String title, required String imagePath, required Color color, required GestureTapCallback ontap}) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  return InkWell(
    onTap: ontap,
    child: Container(
      width: width-20,
      height: 220,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: Svg(imagePath,), height: 150, width: 400,),
          SizedBox(width: 16),
          Text(
            title,
            style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}










void showAddNewSlider({required BuildContext context}) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.65,
        child: Container(
          height: 500,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 130),
                  Text(
                    "Add new",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primary),
                  ),
                  SizedBox(width: 95,),
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.close, color: Colors.red,))
                ],
              ),
              SizedBox(height: 20),
              _buildCardItem(
                context,
                title: 'Meeting Schedule',
                imagePath: AssetsPaths.meetingIcon,
                color: primary,
                ontap: ()=> Get.toNamed("/meetingschedule")
              ),
              SizedBox(height: 15),
              _buildCardItem(
                context,
                title: 'Notes',
                imagePath: AssetsPaths.notesImage,
                color: secondary,
                  ontap: ()=> Get.toNamed("/notesscreen")
              ),
            ],
          ),
        ),
      );
    },
  );
}