// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/components/ingredients_list.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/components/item_description.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/components/item_details.dart';
import 'package:restaurant_delivery/presentation/pages/detail_page/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  DetailView({super.key});

  final List<String> ingredientsList = [
    'elephant.png',
    'mushroom.png',
    'onion.png',
    'pepper.png',
    'tomato.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.product.title),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: SvgPicture.asset('assets/icons/bag.svg'),
          )
        ],
        leading: MaterialButton(
            onPressed: () {
              Get.back();
            },
            child: SvgPicture.asset('assets/icons/arrow-backward.svg')),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), child: Image.asset('assets/images/product-background.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Hero(tag: controller.product.id, child: Image.asset('assets/images/${controller.product.image}')),
                ),
              ],
            ),
            ItemDetails(controller: controller),
            IngredientsList(ingredientsList: ingredientsList),
            ItemDescription()
          ],
        ),
      )),
    );
  }
}
