import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/screens/login_screen.dart';
import '../Constants/Colors.dart';
import '../Constants/String.dart';
import '../Constants/imagespath.dart';
import '../customwigets/newbutton.dart';
 // Import for image paths

class FaceLockScreen extends StatefulWidget {
  const FaceLockScreen({super.key});

  @override
  State<FaceLockScreen> createState() => _FaceLockScreenState();
}

class _FaceLockScreenState extends State<FaceLockScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(fit: StackFit.passthrough,
                  alignment: Alignment.topLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 330),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: primary,
                          highlightColor: Colors.white,
                          onTap: () {
                            Get.toNamed('/homescreen');
                          },
                          child: Image.asset(
                            AssetsPaths.backButtonIcon,  // Using the variable for back button image
                            scale: 2.5,
                          )),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 30, right: 0.0, top: 25),
                      child: Image.asset(AssetsPaths.faceLockLogo),  // Using the variable for logo image
                    )
                  ]),
              SizedBox(
                height: 10,
              ),
              Text(
                faceLock,  // Using the variable for the title
                style: GoogleFonts.poppins(
                    color: primary, fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: width - 70,
                  child: Text(
                    faceLockDescription,  // Using the variable for description
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, color: grey1, fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50),
                child: BtnStyle.buttonStyleOne(
                    title: useFaceLock,  // Using the variable for button title
                    fontfamily: GoogleFonts.poppins(
                        fontSize: 17.49,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    onPress: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    btnColor: primary,
                    width: width - 50,
                    height: 50),
              ),
              SizedBox(height: 10,),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(skipStepText,  // Using the variable for skip text
                        style: GoogleFonts.poppins(
                            color: secondary,
                            fontSize: 13.99
                        ),),
                      SizedBox(width: 2,),
                      Icon(Icons.arrow_forward, color: secondary,),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 240),
                child: Center(
                    child: Text(
                      footerText,  // Using the variable for footer text
                      style: GoogleFonts.poppins(color: grey1),
                    )),
              )
            ],
          )),
    );
  }
}
