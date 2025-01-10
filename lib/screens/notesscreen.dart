import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/Colors.dart';
import '../Constants/imagespath.dart';
import '../customwigets/newbutton.dart';
import '../customwigets/text_field.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final TextEditingController meetingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
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
                      child:  SvgPicture.asset(
                        AssetsPaths.backicon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                     EdgeInsets.only(left: 130, top: 20, right: 20),
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
              fillColor: primary,
              titlecolor: primary,
              minLines: 4,
              maxLines: 4,
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 260, bottom: 30),
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
      )),
    );
  }
}
