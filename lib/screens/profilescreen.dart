import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';
import '../Constants/Colors.dart';
import '../customwigets/text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController namecontrolled = TextEditingController();
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                      onTap: ()=>Get.back(),
                      child: SvgPicture.asset(AssetsPaths.whitebackbutton)),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Column(
                  children: [
                    SvgPicture.asset(
                      AssetsPaths.personnimage,
                      height: 159,
                      width: 159,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Shivam Gupta",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      height: height - 340,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15, right: 15 ),
                        child: Column(
                          children: [
                            TextFieldStyleOne(controller: namecontrolled,

                              enabledBorder: true,
                              outsidepaddingtop: 0,
                              outsidepaddingright: 0,
                              outsidepaddingleft: 0,
                              outsidepaddingbottom: 0,

                              decoration: InputDecoration(

                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary)
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary)
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary)
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary)
                                ),
                                hintText: "shivamnew2gmail.com",
                                hintStyle: GoogleFonts.poppins(
                                  color: primary,
                                ),
                                constraints: BoxConstraints(
                                  minHeight: 10,
                                  minWidth: 10
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 10),
                                alignLabelWithHint: true,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                // prefix: Padding(
                                //   padding: const EdgeInsets.only(right: 10.0, bottom: 0),
                                //   child: SvgPicture.asset(
                                //     AssetsPaths.mailicon,
                                //     width: 20,
                                //     height: 16.25,
                                //   ),
                                // ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 20,
                                  minHeight: 16.25
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    AssetsPaths.mailicon,
                                    width: 20,
                                    height: 16.25,
                                    color: primary,
                                  ),
                                ),
                                suffixIcon: Icon(Icons.edit, color: primary,)
                              ),

                            ),
                            SizedBox(height: 10,),
                            TextFieldStyleOne(controller: namecontrolled,

                              enabledBorder: true,
                              contentPadding: EdgeInsets.zero,
                              outsidepaddingtop: 0,
                              outsidepaddingright: 0,
                              outsidepaddingleft: 0,
                              outsidepaddingbottom: 0,
                              needtitle: false,
                              decoration: InputDecoration(

                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  hintText: "145, Shanti Nager B, Jaipur 3020",
                                  hintStyle: GoogleFonts.poppins(
                                    color: primary,
                                  ),
                                  isDense: true,
                                  alignLabelWithHint: true,
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  // prefix: Padding(
                                  //   padding: const EdgeInsets.only(right: 10.0, bottom: 0),
                                  //   child: SvgPicture.asset(
                                  //     AssetsPaths.mailicon,
                                  //     width: 20,
                                  //     height: 16.25,
                                  //   ),
                                  // ),
                                  prefixIconConstraints: BoxConstraints(
                                      minWidth: 20,
                                      minHeight: 16.25
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      AssetsPaths.mailicon,
                                      width: 20,
                                      height: 16.25,
                                      color: primary,
                                    ),
                                  ),
                                  suffixIcon: Icon(Icons.edit, color: primary,)
                              ),

                            ),
                            SizedBox(height: 10,),
                            TextFieldStyleOne(controller: namecontrolled,

                              enabledBorder: true,
                              contentPadding: EdgeInsets.zero,
                              outsidepaddingtop: 0,
                              outsidepaddingright: 0,
                              outsidepaddingleft: 0,
                              outsidepaddingbottom: 0,
                              needtitle: false,
                              decoration: InputDecoration(

                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  hintText: "0123456789",
                                  hintStyle: GoogleFonts.poppins(
                                    color: primary,
                                  ),
                                  isDense: true,
                                  alignLabelWithHint: true,
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  // prefix: Padding(
                                  //   padding: const EdgeInsets.only(right: 10.0, bottom: 0),
                                  //   child: SvgPicture.asset(
                                  //     AssetsPaths.mailicon,
                                  //     width: 20,
                                  //     height: 16.25,
                                  //   ),
                                  // ),
                                  prefixIconConstraints: BoxConstraints(
                                      minWidth: 20,
                                      minHeight: 16.25
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      AssetsPaths.callicon,
                                      width: 20,
                                      height: 26.6,
                                      color: primary,
                                    ),
                                  ),
                                  suffixIcon: Icon(Icons.edit, color: primary,)
                              ),

                            ),
                            SizedBox(height: 10,),
                            TextFieldStyleOne(controller: namecontrolled,

                              enabledBorder: true,
                              contentPadding: EdgeInsets.zero,
                              outsidepaddingtop: 0,
                              outsidepaddingright: 0,
                              outsidepaddingleft: 0,
                              outsidepaddingbottom: 0,
                              needtitle: false,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: primary)
                                  ),
                                  hintText: "Password",
                                  hintStyle: GoogleFonts.poppins(
                                    color: primary,
                                  ),
                                  isDense: true,
                                  alignLabelWithHint: true,
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  // prefix: Padding(
                                  //   padding: const EdgeInsets.only(right: 10.0, bottom: 0),
                                  //   child: SvgPicture.asset(
                                  //     AssetsPaths.mailicon,
                                  //     width: 20,
                                  //     height: 16.25,
                                  //   ),
                                  // ),
                                  prefixIconConstraints: BoxConstraints(
                                      minWidth: 20,
                                      minHeight: 16.25
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                      AssetsPaths.lockicon,
                                      width: 20,
                                      height: 23.92,
                                      color: primary,
                                    ),
                                  ),
                                  suffixIcon: Icon(Icons.edit, color: primary,),
                              ),

                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ))
              ]),
        ),
      ),
    );
  }
}
