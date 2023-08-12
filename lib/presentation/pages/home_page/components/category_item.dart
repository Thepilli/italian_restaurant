// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';

import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/constants/j_box.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;
  final bool isActive;
  final Function()? onTap;
  const CategoryItem({
    Key? key,
    this.image = "",
    this.name = "",
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.jPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(30),
              color: isActive ? AppColors.jPrimaryColor : AppColors.whiteColor),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: AppColors.whiteColor),
                  child: Image.asset('assets/images/$image'),
                ),
              ),
              const JBox(width: 5),
              Text(
                name,
                style: appstyle(15, isActive ? AppColors.textLightColor : AppColors.textDarkColor, FontWeight.w100),
              )
            ],
          ),
        ),
      ),
    );
  }
}
