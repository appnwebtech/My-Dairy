import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Use the correct flutter_svg package
import '../Constants/Colors.dart';
import '../Constants/imagespath.dart';
import '../HomeScreenWidgets/bottomsheet.dart';

class AllNotesScreen extends StatefulWidget {
  const AllNotesScreen({super.key});

  @override
  State<AllNotesScreen> createState() => _AllNotesScreenState();
}

class _AllNotesScreenState extends State<AllNotesScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: const CustomBottomSheet(
        selectedIndex: 4,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: SvgPicture.asset(
                AssetsPaths.notesImage,
                height: 159,
                width: 306.87,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "All Notes",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: height - 339,
                width: width,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 10.0, right: 10.0),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed('/editnotesscreen');
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffEAEAEA)),
                                  color: Color(0xffF3F8FF)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 0.0,
                                          top: 5,
                                          bottom: 5,
                                          left: 5),
                                      child: Text(
                                        "Some words that you write down quickly to help you remember something. To notice or pay careful attention to something. To  mention something",
                                        style: GoogleFonts.poppins(
                                          color: primary,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        softWrap: true,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: SvgPicture.asset(
                                      AssetsPaths.deleteicon,
                                      height: 20,
                                      width: 20,
                                    ),
                                  )
                                ],
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
