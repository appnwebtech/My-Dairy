import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';
import '../Constants/Colors.dart';
import '../customwigets/newbutton.dart';
import '../customwigets/text_field.dart';

class MeetingScheduleScreen extends StatefulWidget {
  const MeetingScheduleScreen({super.key});

  @override
  State<MeetingScheduleScreen> createState() => _MeetingScheduleScreenState();
}

class _MeetingScheduleScreenState extends State<MeetingScheduleScreen> {
  final TextEditingController meetingcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                            const EdgeInsets.only(left: 30, top: 20, right: 20),
                        child: SvgPicture.asset(
                          AssetsPaths.meetingIcon,
                          width: 180,
                          height: 180,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child: SvgPicture.asset(
                      AssetsPaths.squareicon,
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Text(
                    "Meeting",
                    style: GoogleFonts.poppins(
                        fontSize: 16.33, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      child: BtnStyle.buttonStyleOne(
                          title: "Online",
                          titleColor: primary,
                          titleSize: 10,
                          onPress: () {},
                          prefixIcon: SvgPicture.asset(AssetsPaths.onlineicon)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      child: BtnStyle.buttonStyleOne(
                          title: "Offline",
                          titleColor: primary,
                          titleSize: 10,
                          onPress: () {},
                          prefixIcon:
                              SvgPicture.asset(AssetsPaths.locationicon)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 10),
                child: TextFieldStyleOne(
                  outsidepaddingbottom: 0,
                  outsidepaddingtop: 0,
                  floatinglabelbehavior: FloatingLabelBehavior.always,
                  controller: meetingcontroller,
                  enabledBorder: true,
                  suffixiconcolor: primary,
                  prefix: SvgPicture.asset(AssetsPaths.titleicon),
                  textcolor: primary,
                  contentPadding: EdgeInsets.only(left: 100, bottom: 10),
                  hintText: "Title",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  hinttextcolor: primary,
                  prefixwidth: 50,
                  fontfamily: GoogleFonts.poppins(),
                  outlineBorderColor: primary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 0),
                child: TextFieldStyleOne(
                  outsidepaddingbottom: 0,
                  outsidepaddingtop: 0,
                  floatinglabelbehavior: FloatingLabelBehavior.always,
                  controller: meetingcontroller,
                  enabledBorder: true,
                  suffixiconcolor: primary,
                  prefix: SvgPicture.asset(AssetsPaths.meetlink),
                  textcolor: primary,
                  contentPadding: EdgeInsets.only(left: 100, bottom: 10),
                  hintText: "Meeting Link",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  hinttextcolor: primary,
                  prefixwidth: 50,
                  fontfamily: GoogleFonts.poppins(),
                  outlineBorderColor: primary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 0),
                child: TextFieldStyleOne(
                  outsidepaddingbottom: 0,
                  outsidepaddingtop: 0,
                  floatinglabelbehavior: FloatingLabelBehavior.always,
                  controller: meetingcontroller,
                  enabledBorder: true,
                  suffixiconcolor: primary,
                  prefix: SvgPicture.asset(AssetsPaths.meetingwith),
                  textcolor: primary,
                  focusedBorderColor: primary,
                  contentPadding: EdgeInsets.only(left: 100, bottom: 10),
                  hintText: "Meeting With",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  hinttextcolor: primary,
                  prefixwidth: 50,
                  fontfamily: GoogleFonts.poppins(),
                  outlineBorderColor: primary,
                ),
              ),
              Stack(
                alignment: Alignment.centerLeft,
                fit: StackFit.loose,
                children: [TextFieldStyleOne(
                  outsidepaddingtop: 18,
                  outsidepaddingbottom: 0,
                  enabledBorder: true,
                  titlefontsize: 16.33,
                  needtitle: true,
                  titletext: "Attachement",
                  prefixtitleicon: AssetsPaths.attachementicon,
                  floatinglabelbehavior: FloatingLabelBehavior.always,
                  controller: meetingcontroller,
                  suffixiconcolor: primary,
                  space: 20,
                  hintText: 'Delivery plugin.pdf',
                  textcolor: primary,
                  fillColor: primary,
                  titlecolor: primary,
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0)),
                    contentPadding: EdgeInsets.only(left: 130),
                  ),
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: primary),
                  hinttextcolor: primary,
                  prefixwidth: 50,
                  fontfamily: GoogleFonts.poppins(),
                  outlineBorderColor: primary,
                ),
                  Padding(
                    padding: const EdgeInsets.only(left : 30.0, top: 43),
                    child: BtnStyle.buttonStyleOne(onPress: (){},
                    title: "Choose file",
                        btnColor: blue1,
                    titleColor: Colors.white,
                    height: 30,
                    borderRadius: 10),
                  )
        ]),
              Padding(
                padding: const EdgeInsets.only(right: 18, left: 18),
                child: TextFieldStyleOne(
                  outsidepaddingtop: 0,
                  outsidepaddingbottom: 0,
                  enabledBorder: true,
                  titlefontsize: 16.33,
                  needtitle: true,
                  titletext: "Description",
                  prefixtitleicon: AssetsPaths.attachementicon,
                  floatinglabelbehavior: FloatingLabelBehavior.always,
                  controller: meetingcontroller,
                  suffixiconcolor: primary,
                  space: 20,
                  hintText: 'Delivery plugin.pdf',
                  textcolor: primary,
                  fillColor: primary,
                  titlecolor: primary,
                  minLines: 3,
                  maxLines: 3,
                  decoration: InputDecoration(

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary, width: 1.0)),
                    contentPadding: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10)
                  ),
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: primary),
                  hinttextcolor: primary,
                  prefixwidth: 50,
                  fontfamily: GoogleFonts.poppins(),
                  outlineBorderColor: primary,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 27, bottom: 30),
                    child: BtnStyle.buttonStyleOne(
                        title: "Save",
                        fontfamily: GoogleFonts.poppins(
                            fontSize: 17.49,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        onPress: () {
                          Get.toNamed('/fingerprint');
                        },
                        btnColor: primary,
                        width: width-50,
                        height: 50),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
