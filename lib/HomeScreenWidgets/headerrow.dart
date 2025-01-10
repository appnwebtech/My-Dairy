import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/String.dart';
import '../Constants/imagespath.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 20),
          child: Image.asset(AssetsPaths.personLogo, scale: 1.8),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              welcomeMessage,
              maxLines: 2,
              style: GoogleFonts.poppins(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              scheduleInfo,
              maxLines: 2,
              style: GoogleFonts.poppins(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () => Get.toNamed("/chatbox"),
          child: Image.asset(AssetsPaths.chatIcon, scale: 3),
        ),
        const SizedBox(width: 20),
        Image.asset(AssetsPaths.bellIcon, scale: 3),
        const SizedBox(width: 10),
      ],
    );
  }
}