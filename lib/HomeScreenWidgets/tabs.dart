import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/Colors.dart';
import '../Constants/String.dart';
import '../Constants/imagespath.dart';
import '../HomeScreenWidgets/headerrow.dart';
import '../customwigets/bottomslider.dart';
import '../customwigets/meetingcontainer.dart';

class ToggleButtonsRow extends StatelessWidget {
  final double width;
  final bool isClicked;
  final ValueChanged<bool> onToggle;

  const ToggleButtonsRow({
    Key? key,
    required this.width,
    required this.isClicked,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => onToggle(true),
          child: Container(
            height: 70,
            width: width - 220,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isClicked ? Colors.white : Colors.grey.shade200,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "15",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 8),
                  child: Text(
                    todayMeetings,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () => onToggle(false),
          child: Container(
            height: 70,
            width: width - 220,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: !isClicked ? Colors.white : Colors.grey.shade200,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "10",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 8),
                  child: Text(
                    yourNotes,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}