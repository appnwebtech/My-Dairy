import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Use the correct flutter_svg package
import '../Constants/Colors.dart';
import '../Constants/String.dart';
import '../Constants/imagespath.dart';
import '../HomeScreenWidgets/bottomsheet.dart';
import '../customwigets/bottomslider.dart';
import '../customwigets/curveclipper.dart';
import '../customwigets/meeting.dart';
import '../customwigets/meetingcontainer.dart';
import '../customwigets/notes.dart';

class Allmeetingschedulescreen extends StatefulWidget {
  const Allmeetingschedulescreen({super.key});

  @override
  State<Allmeetingschedulescreen> createState() =>
      _AllmeetingschedulescreenState();
}

class _AllmeetingschedulescreenState extends State<Allmeetingschedulescreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: const CustomBottomSheet(
        selectedIndex: 2,
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
                AssetsPaths.meetingIcon,
                height: 159,
                width: 306.87,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "All Meeting Schedules",
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
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3.05),
                    ),
                    itemBuilder: (context, index) {
                      return buildMeetingContainer();
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
