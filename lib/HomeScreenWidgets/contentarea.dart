
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/Colors.dart';
import '../Constants/imagespath.dart';
import '../customwigets/meetingcontainer.dart';




class ContentArea extends StatelessWidget {
  final bool isClicked;
  final double height;
  final double width;

  const ContentArea({
    Key? key,
    required this.isClicked,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height - 339,
      width: width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: isClicked
            ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio:
            width / (MediaQuery.of(context).size.height / 3.05),
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return buildMeetingContainer();
          },
        )
            : ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () => Get.toNamed('/editnotesscreen'),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffEAEAEA)),
                    color: const Color(0xffF3F8FF),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Some words that you write down quickly to help you remember\u2028something.",
                            style: GoogleFonts.poppins(color: primary),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            softWrap: true,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(AssetsPaths.deleteicon)
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
