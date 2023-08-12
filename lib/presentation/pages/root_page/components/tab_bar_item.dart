import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/constants/j_box.dart';

class TabBarItem extends StatelessWidget {
  final bool isActive;
  final String icon;
  const TabBarItem({super.key, this.isActive = false, this.icon = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 25.h,
            width: 25.w,
            child: SvgPicture.asset(
              icon,
              color: isActive ? AppColors.jSecondaryColor : AppColors.jSecondaryColor.withOpacity(.5),
            ),
          ),
          const JBox(height: 10),
          isActive
              ? Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    color: AppColors.jSecondaryColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                )
              : const JBox()
        ],
      ),
    );
  }
}
