import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({
    super.key,
    required this.ingredientsList,
  });

  final List<String> ingredientsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ingredients', style: appstyle(20, AppColors.textDarkColor, FontWeight.w400)),
        Row(
          children: List.generate(
              ingredientsList.length,
              (index) => Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.randomColor()),
                    height: 40.h,
                    width: 40.w,
                    child: Image.asset('assets/images/${ingredientsList[index]}'),
                  )),
        )
      ],
    );
  }
}
