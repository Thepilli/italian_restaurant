import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/constants/j_box.dart';
import 'package:restaurant_delivery/models/product_model.dart';
import 'package:restaurant_delivery/presentation/router/app_route_name.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 15,
        right: 15,
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRouteName.detail, arguments: {'data': product});
        },
        child: Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(color: AppColors.lightBglight, borderRadius: BorderRadius.circular(12), boxShadow: [
              BoxShadow(blurRadius: 6, spreadRadius: 6, offset: const Offset(0, 3), color: AppColors.blackColor.withOpacity(.05))
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title, style: appstyle(18, AppColors.textDarkColor, FontWeight.w100)),
                      const JBox(height: 10),
                      Text(product.description,
                          maxLines: 2,
                          style: appstyle(15, AppColors.textDarkColor.withOpacity(.5), FontWeight.w100, height: 1.2)),
                      const JBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 22.w, height: 22.h, child: SvgPicture.asset('assets/icons/fire.svg')),
                          Text(product.calories, style: appstyle(15, AppColors.orange, FontWeight.w100)),
                        ],
                      ),
                      const JBox(height: 20),
                      Text('\$${product.price}', style: appstyle(20, AppColors.textDarkColor, FontWeight.w100)),
                    ],
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(90), boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 6,
                              offset: const Offset(0, 0),
                              color: AppColors.blackColor.withOpacity(.05))
                        ]),
                        child: Hero(tag: product.id, child: Image.asset('assets/images/${product.image}'))))
              ],
            )),
      ),
    );
  }
}
