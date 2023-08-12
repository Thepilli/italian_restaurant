import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/detail_controller.dart';

class IconRow extends StatelessWidget {
  final String iconPath;
  final String text;
  const IconRow({
    super.key,
    required this.controller,
    required this.iconPath,
    required this.text,
  });

  final DetailController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/$iconPath', height: 20),
        Text(
          text,
          style: appstyle(15, AppColors.textDarkColor.withOpacity(.5), FontWeight.w100),
        )
      ],
    );
  }
}
