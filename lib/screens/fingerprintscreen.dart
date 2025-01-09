import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/screens/login_screen.dart';
import '../Constants/Colors.dart';
import '../Constants/String.dart';
import '../Constants/imagespath.dart';
import '../customwigets/newbutton.dart';
import 'facelockscreen.dart';

class FingerPrintScreen extends StatefulWidget {
  const FingerPrintScreen({super.key});

  @override
  State<FingerPrintScreen> createState() => _FingerPrintScreenState();
}

class _FingerPrintScreenState extends State<FingerPrintScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Stack(fit: StackFit.loose, children: [
                  InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: primary,
                      highlightColor: Colors.white,
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Image.asset(
                        AssetsPaths.backButtonIcon,
                        scale: 2.5,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 25),
                    child: Image.asset(AssetsPaths.fingerprintIcon),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                fingerprintTitle,
                style: GoogleFonts.poppins(
                    color: primary, fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: width - 60,
                  child: Text(
                    fingerprintDescription,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, color: grey1, fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: BtnStyle.buttonStyleOne(
                    title: useBiometricsButtonTitle,
                    fontfamily: GoogleFonts.poppins(
                        fontSize: 17.49,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    onPress: () {
                      Get.toNamed('/homescreen');
                    },
                    btnColor: primary,
                    width: width - 50,
                    height: 50),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FaceLockScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        skipStepText,
                        style: GoogleFonts.poppins(color: secondary, fontSize: 13.99),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: secondary,
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 240),
                child: Center(
                    child: Text(
                      footerText,
                      style: GoogleFonts.poppins(color: grey1),
                    )),
              )
            ],
          )),
    );
  }
}