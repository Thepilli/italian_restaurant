import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';

class AmountCounterButton extends StatelessWidget {
  const AmountCounterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 120.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: AppColors.jPrimaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.remove, color: AppColors.whiteColor)),
          Text(
            '1',
            style: appstyle(12, AppColors.whiteColor, FontWeight.w100),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add, color: AppColors.whiteColor)),
        ],
      ),
    );
  }
}
