import 'package:flutter/material.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/data/category_data.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/components/category_item.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final ScrollController scrollController = ScrollController();
  int _previousIndex = -1;

  onSelectCategory(index) {
    setState(() {
      for (var item in CATEGORIES) {
        item['isActive'] = false;
      }
      CATEGORIES[index]['isActive'] = true;

      double newOffset = scrollController.offset;
      if (index > 0 && index < CATEGORIES.length - 1) {
        if (index > _previousIndex) {
          newOffset += 150;
        } else if (index < _previousIndex) {
          newOffset -= 150;
        }
      }

      scrollController.animateTo(newOffset, duration: const Duration(milliseconds: 200), curve: Curves.linear);

      _previousIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Text(
            'Categories',
            style: appstyle(20, AppColors.textDarkColor, FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: CATEGORIES.length,
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(
                  isActive: CATEGORIES[index]["isActive"],
                  image: CATEGORIES[index]['image'],
                  name: CATEGORIES[index]['title'],
                  onTap: () {
                    onSelectCategory(index);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
