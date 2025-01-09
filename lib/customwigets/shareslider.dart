import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';
import 'package:mydiary_dev/customwigets/newbutton.dart';
import 'package:mydiary_dev/customwigets/text_field.dart';

import '../Constants/Colors.dart';
import 'meetingcontainer.dart';
import 'notes.dart';

void shareSlider({required BuildContext context}) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  bool isMeeting = true;
  final TextEditingController message = TextEditingController();
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.85,
        child: Container(
          height: 500,
          width: 500,
          padding: EdgeInsets.only(top: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                fit: StackFit.loose,
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 320.0),
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        AssetsPaths.backicon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 75, top: 20, right: 20),
                    child: SvgPicture.asset(
                      AssetsPaths.shareimage,
                      width: 180,
                      height: 180,
                    ),
                  )
                ],
              ),
              Text(
                "Share",
                style: GoogleFonts.poppins(
                    color: primary, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Text(
                  "This meeting/note can be shared with your team to keep the relevant people informed and aligned.",
                  style: GoogleFonts.poppins(
                      color: Color(0xff7D7D7D),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: isMeeting==true? buildMeetingContainer() : buildNotesCard(),
              ),
              TextFieldStyleOne(
                controller: message,
                hintText: "Type Your message",
                hinttextcolor: primary,
                floatinglabelbehavior: FloatingLabelBehavior.always,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff2E74D8), Color(0xffC3DCFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: TextFieldStyleOne(
                    prefix: Icon(Icons.search),
                    enabledBorder: true,
                    controller: message,
                    hintText: "Search",
                    hinttextcolor: primary,
                    contentpaddingleft: 150,
                    needtitle: false,
                    space: 0,
                    outsidepaddingtop: 0,
                    outsidepaddingbottom: 0,
                    contentPadding: EdgeInsets.all(0),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      focusColor: Colors.transparent,
                      fillColor: Colors.transparent,
                      filled: true,
                      prefixIconColor: Colors.white,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                      hintText: "Search",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 1.0)),
                      contentPadding: EdgeInsets.only(left: 130),
                    ),
                    floatinglabelbehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 12.0, right: 12.0, bottom: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Team",
                      style: GoogleFonts.poppins(
                        color: primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    BtnStyle.buttonStyleOne(
                      height: 30,
                        onPress: () {},
                      bordercolor: Color(0xff2E74D8),
                      needborder: true,
                      title: "Send to All",
                      titleColor: Color(0xff2E74D8)
                    ),

                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  width: width,
                  height: height/6,
                  child: ListView.builder(
                    itemCount: 19,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.only(left:15.0, right: 15.0),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SvgPicture.asset(AssetsPaths.personnimage),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0, right: width/2.3),
                                    child: Text("Shivam Gupta", style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: primary,
                                      fontWeight:  FontWeight.w400
                                    ),),
                                  ),
                                  BtnStyle.buttonStyleOne(onPress: (){},
                                      height: 20,
                                    title: "Send",
                                    fontfamily: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 11.39,
                                    ),
                                    buttonColor: Color(0xff2E74D8),


                                  )
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      );
                    },),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
