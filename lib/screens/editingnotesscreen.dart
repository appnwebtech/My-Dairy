import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/Colors.dart';
import '../Constants/imagespath.dart';
import '../customwigets/newbutton.dart';
import '../customwigets/shareslider.dart';
import '../customwigets/text_field.dart';

class EditingNotesScreen extends StatefulWidget {
  const EditingNotesScreen({super.key});

  @override
  State<EditingNotesScreen> createState() => _EditingNotesScreenState();
}

class _EditingNotesScreenState extends State<EditingNotesScreen> {
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
                      padding: EdgeInsets.only(left: 130, top: 20, right: 20),
                      child: SvgPicture.asset(
                        AssetsPaths.notesImage,
                        width: 180,
                        height: 180,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: TextFieldStyleOne(
                outsidepaddingtop: 0,
                outsidepaddingbottom: 0,
                enabledBorder: true,
                titlefontsize: 16.33,
                needtitle: true,
                titletext: "Notes",
                prefixtitleicon: AssetsPaths.attachementicon,
                floatinglabelbehavior: FloatingLabelBehavior.always,
                controller: meetingcontroller,
                suffixiconcolor: primary,
                space: 20,
                hintText: 'Delivery plugin.pdf',
                textcolor: primary,
                titlecolor: primary,
                minLines: 4,
                maxLines: 4,
                decoration: InputDecoration(
                  fillColor: Color(0xffF0F0F0),
                    filled: true,
                    hintText: 'Some words that you write down quickly to help you remember something. To  notice or pay careful attention to  something. To mention something',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    contentPadding: EdgeInsets.only(
                        right: 10, left: 10, top: 10, bottom: 10)),
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400, color: primary),
                hinttextcolor: primary,
                prefixwidth: 50,
                fontfamily: GoogleFonts.poppins(),
                outlineBorderColor: primary,
              ),
            ),
            Stack(
                alignment: Alignment.centerLeft,
                fit: StackFit.loose,
                children: [
                  TextFieldStyleOne(
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
                      filled: true,
                      fillColor: Color(0xffF0F0F0),
                      hintText: "Delivery.pdf",
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
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, color: primary),
                    hinttextcolor: primary,
                    prefixwidth: 50,
                    fontfamily: GoogleFonts.poppins(),
                    outlineBorderColor: primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 43),
                    child: BtnStyle.buttonStyleOne(
                        onPress: () {},
                        title: "Choose file",
                        btnColor: blue1,
                        titleColor: Colors.white,
                        height: 30,
                        borderRadius: 10),
                  )
                ]),
            SizedBox(
              height: height - 630,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BtnStyle.buttonStyleOne(
                      title: "Delete",
                      fontfamily: GoogleFonts.poppins(
                          fontSize: 17.49,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      onPress: () {
                        Get.toNamed('/fingerprint');
                      },
                      btnColor: Color(0xffFF5A54),
                      width: 80,
                      height: 50),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 27, bottom: 30),
                    child: BtnStyle.buttonStyleOne(
                        title: "Edit",
                        fontfamily: GoogleFonts.poppins(
                            fontSize: 17.49,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        onPress: () {
                          Get.toNamed('/notesscreen');
                        },
                        btnColor: Color(0xff2E74D8),
                        width: 100,
                        height: 50),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 27, bottom: 30),
                    child: BtnStyle.buttonStyleOne(
                        title: "Share",
                        needborder: true,
                        fontfamily: GoogleFonts.poppins(
                            fontSize: 17.49,
                            color: Color(0xff2E74D8),
                            fontWeight: FontWeight.bold),
                        onPress: () {
                          shareSlider(context: context);
                        },
                        bordercolor: Color(0xff2E74D8),
                        btnColor: Colors.white,
                        width: 100,
                        height: 50),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
