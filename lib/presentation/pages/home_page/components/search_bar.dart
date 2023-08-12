import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/constants/j_box.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 70.h,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppColors.blackColor.withOpacity(.05), blurRadius: 6, spreadRadius: 6, offset: const Offset(0, 2))
              ], borderRadius: BorderRadius.circular(20)),
              child: TextField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteColor,
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: AppColors.jPrimaryColor,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  alignLabelWithHint: true,
                  label: Text('Search Food..', style: appstyle(15, AppColors.jPrimaryColor, FontWeight.normal)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          const JBox(width: 10),
          Container(
            padding: const EdgeInsets.all(20),
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(color: AppColors.jSecondaryColor, borderRadius: BorderRadius.circular(12)),
            child: SvgPicture.asset(
              'assets/icons/filter.svg',
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
