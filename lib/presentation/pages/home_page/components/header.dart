import 'package:flutter/material.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Customer',
                    style: appstyle(20, AppColors.textDarkColor, FontWeight.w400),
                  ),
                  Text(
                    'Lets find something to eat',
                    style: appstyleNormal(15, AppColors.textDarkColor.withOpacity(.5), FontWeight.w400),
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
