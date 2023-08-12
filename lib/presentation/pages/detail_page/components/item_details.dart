import 'package:flutter/material.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/constants/j_box.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/components/amount_counter_button.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/components/icon_row.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/detail_controller.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.controller,
  });

  final DetailController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconRow(
                    controller: controller,
                    iconPath: 'fire.svg',
                    text: controller.product.calories,
                  ),
                  const JBox(width: 20),
                  IconRow(
                    controller: controller,
                    iconPath: 'star.svg',
                    text: controller.product.rating,
                  ),
                ],
              ),
              Text(
                '\$${controller.product.price}',
                style: appstyle(25, AppColors.jPrimaryColor, FontWeight.w100),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconRow(
                controller: controller,
                iconPath: 'clock.svg',
                text: '20-30 mins',
              ),
              const AmountCounterButton(),
            ],
          ),
        ],
      ),
    );
  }
}
