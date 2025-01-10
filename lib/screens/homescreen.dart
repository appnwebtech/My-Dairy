import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Constants/Colors.dart';
import '../HomeScreenWidgets/bottomsheet.dart';
import '../HomeScreenWidgets/contentarea.dart';
import '../HomeScreenWidgets/tabs.dart';
import '../HomeScreenWidgets/headerrow.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Scaffold(
          bottomSheet: const CustomBottomSheet(selectedIndex: 1,),
          backgroundColor: primary,
          body: SafeArea(
            child: Column(
              children: [
                HeaderRow(),
                const SizedBox(height: 20),
                ToggleButtonsRow(
                  width: width,
                  isClicked: isClicked,
                  onToggle: (value) {
                    setState(() {
                      isClicked = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80.0),
                    child: ContentArea(
                      isClicked: isClicked,
                      height: height,
                      width: width,
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



