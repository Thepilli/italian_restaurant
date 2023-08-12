import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/constants/j_box.dart';
import 'package:restaurant_delivery/data/product_data.dart';
import 'package:restaurant_delivery/models/product_model.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/components/category_list.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/components/header.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/components/product_card.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/components/search_bar.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const JBox(
              height: 10,
            ),
            const MySearchBar(),
            const Categories(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: appstyle(20, AppColors.textDarkColor, FontWeight.w400),
                  ),
                  InkWell(
                      child: Text(
                    'see all',
                    style: appstyle(15, AppColors.textDarkColor.withOpacity(.5), FontWeight.w400),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 440,
              // width: 300,
              child: ListView.builder(
                itemCount: PRODUCTS.length,
                itemBuilder: (context, index) {
                  List<Product> productsList = PRODUCTS.map((jsonMap) => Product.fromMap(jsonMap)).toList();

                  return ProductCard(product: productsList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
