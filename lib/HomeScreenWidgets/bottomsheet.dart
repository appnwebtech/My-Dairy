import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';

import '../customwigets/bottomslider.dart';

class CustomBottomSheet extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomSheet({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.only(bottom: 15),
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIcon(
            context,
            index: 1,
            assetPath: AssetsPaths.homeIcon,
            routeName: '/homescreen',
          ),
          _buildIcon(
            context,
            index: 2,
            assetPath: AssetsPaths.calendarIcon,
            routeName: '/allmeetingscreen',
          ),
          _buildIcon(
            context,
            index: 3,
            assetPath: AssetsPaths.plusIcon,
            onTap: () => showAddNewSlider(context: context),
          ),
          _buildIcon(
            context,
            index: 4,
            assetPath: AssetsPaths.notesIcon,
            routeName: '/allnotesscreen',
          ),
          _buildIcon(
            context,
            index: 5,
            assetPath: AssetsPaths.profileIcon,
            routeName: '/profilescreen',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context,
      {required int index,
        required String assetPath,
        String? routeName,
        VoidCallback? onTap}) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: () {
        if (routeName != null) {
          Get.toNamed(routeName);
        } else if (onTap != null) {
          onTap();
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            assetPath,
            color: isSelected ? Colors.blue : null,
          ),
          SizedBox(height: 3,),
          isSelected ?  SvgPicture.asset(AssetsPaths.blueline, color: Colors.blue,) : SizedBox()
        ],
      ),
    );
  }
}

