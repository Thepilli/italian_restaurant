import 'package:flutter/widgets.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({super.key});
  final String detail =
      'Piiza is a dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot.';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Details', style: appstyle(20, AppColors.textDarkColor, FontWeight.w400)),
        Text(detail, style: appstyle(15, AppColors.textDarkColor.withOpacity(.5), FontWeight.w100)),
      ],
    );
  }
}
