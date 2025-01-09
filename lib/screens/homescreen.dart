import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/Colors.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../Constants/String.dart';
import '../Constants/imagespath.dart';
import '../customwigets/bottomslider.dart';
import '../customwigets/curveclipper.dart';
import '../customwigets/meeting.dart';
import '../customwigets/meetingcontainer.dart';
import '../customwigets/notes.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isclicked = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Scaffold(
          bottomSheet: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.only(bottom: 20),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  color: primary,
                  image: Svg(AssetsPaths.homeIcon),
                ),
                Image(
                  color: primary,
                  image: Svg(AssetsPaths.calendarIcon),
                ),
                InkWell(
                  onTap: () {
                    showAddNewSlider(context: context);
                  },
                  child: Image(
                    image: Svg(AssetsPaths.plusIcon),
                  ),
                ),
                Image(
                  color: primary,
                  image: Svg(AssetsPaths.notesIcon),
                ),
                Image(
                  color: primary,
                  image: Svg(AssetsPaths.profileIcon),
                ),
              ],
            ),
          ),
          backgroundColor: primary,
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 20),
                      child: Image.asset(
                        AssetsPaths.personLogo,
                        scale: 1.8,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
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
                    const SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed("/chatbox");
                      },
                      child: Image.asset(
                        AssetsPaths.chatIcon,
                        scale: 3,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      AssetsPaths.bellIcon,
                      scale: 3,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(fit: StackFit.loose, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isclicked = true;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: width - 220,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
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
                                padding:
                                    const EdgeInsets.only(top: 20, left: 8),
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width - 190),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isclicked = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        height: 70,
                        width: width - 220,
                        child: Container(
                          height: 70,
                          width: width - 220,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(20 // Bottom-right corner
                                    ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
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
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 8),
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
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      height: height - 339,
                      width: width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: isclicked == true
                              ? GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 16,
                                    crossAxisSpacing: 16,
                                    childAspectRatio: MediaQuery.of(context)
                                            .size
                                            .width /
                                        (MediaQuery.of(context).size.height /
                                            3.05),
                                  ),
                                  itemBuilder: (context, index) {
                                    return buildMeetingContainer();
                                  })
                              : ListView.builder(
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffEAEAEA)
                                            ),
                                              color: Color(0xffF3F8FF)),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 0.0, top: 5, bottom: 5, left: 5),
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
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Image(image: Svg(AssetsPaths.deleteicon)))
                                            ],
                                          )),
                                    );
                                  })),
                    ),
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
