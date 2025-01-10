// Define the hardcoded string paths in a separate file as variables
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/Colors.dart';
import '../Constants/String.dart';
import '../Constants/imagespath.dart';
import '../customwigets/newbutton.dart';
import '../customwigets/text_field.dart';


// New file: assets_paths.dart

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();


  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 100, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        fit: StackFit.loose,
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Image(
                            image: Svg(AssetsPaths.companyLogo),
                          )
                        ],
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(welcomeBack,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xff1F2D5A))),
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: Svg(AssetsPaths.handImage),
                      
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(toText,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xff1F2D5A))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(myDiary,
                        style: GoogleFonts.poppins(
                            color: Color(0xff2E74D8),
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  loginMessage,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xff7D7D7D),
                  ),
                ),
              ),
              TextFieldStyleOne(
                floatinglabelbehavior: FloatingLabelBehavior.always,
                controller: username,
                enabledBorder: true,
                suffixiconcolor: primary,
                prefix: Image(
                  color: primary,
                  image: Svg(AssetsPaths.personSvg),
                ),
                textcolor: primary,
                contentPadding: EdgeInsets.only(left: 100, bottom: 10),
                hintText: usernameHint,
                hinttextcolor: primary,
                prefixwidth: 50,
                fontfamily: GoogleFonts.poppins(),
                outlineBorderColor: primary,
              ),
              TextFieldStyleOne(
                floatinglabelbehavior: FloatingLabelBehavior.always,
                controller: password,
                enabledBorder: true,
                isPassword: true,
                suffixiconcolor: primary,
                prefix: Icon(
                  Icons.lock_outline,
                  color: primary,
                ),
                textcolor: primary,
                contentPadding: EdgeInsets.only(left: 100, bottom: 10),
                hintText: passwordHint,
                hinttextcolor: primary,
                prefixwidth: 50,
                fontfamily: GoogleFonts.poppins(),
                outlineBorderColor: primary,
              ),
              SizedBox(
                height: 50,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 220,
                      child: CheckboxListTile(
                        activeColor: primary,
                        checkColor: Colors.white,
                        checkboxShape: RoundedRectangleBorder(side: BorderSide(color: primary, width: 30)),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        title: Text(
                            rememberMe,
                            style: GoogleFonts.poppins(
                                color: primary
                            )
                        ),
                        controlAffinity: ListTileControlAffinity.leading, // Checkbox on the left
                      ),
                    ),
                    TextButton(
                        onPressed: () {}, child: Text(forgotPassword, style: GoogleFonts.poppins(
                        color: secondary
                    ),))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 27),
                child: BtnStyle.buttonStyleOne(
                    title: loginButton,
                    fontfamily: GoogleFonts.poppins(
                        fontSize: 17.49,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    onPress: () {
                      Get.toNamed('/fingerprint');
                    },
                    btnColor: primary,
                    width: width - 50,
                    height: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 27),
                child: Center(
                  child: InkWell(
                      onTap: () {},
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: noAccountText,
                            style: GoogleFonts.poppins()),
                        TextSpan(
                            text: registerText,
                            style: GoogleFonts.poppins(
                              color: secondary,
                            ))
                      ]))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Center(
                    child: Text(
                      footerText,
                      style: GoogleFonts.poppins(
                          color: grey1
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
