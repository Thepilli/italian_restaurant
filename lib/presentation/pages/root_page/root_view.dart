import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/presentation/pages/home_page/home_view.dart';
import 'package:restaurant_delivery/presentation/pages/root_page/components/tab_bar_item.dart';
import 'package:restaurant_delivery/presentation/pages/root_page/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        floatingActionButton: _buildFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        body: _buildBody(),
        bottomNavigationBar: _buildFooter(),
      ),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: controller.tabIndex.value,
      children: [
        HomeView(),
        Container() //placeholder
      ],
    );
  }

  Widget _buildFab() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppColors.jSecondaryColor,
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/cart.svg',
          height: 25,
          width: 25,
          color: AppColors.jPrimaryColor,
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return AnimatedBottomNavigationBar.builder(
      backgroundColor: AppColors.jPrimaryColor,
      onTap: (index) {
        controller.tabIndex.value = index;
      },
      itemCount: controller.tabs.length,
      activeIndex: controller.tabIndex.value,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      tabBuilder: (index, isActive) {
        return TabBarItem(isActive: isActive, icon: controller.tabs[index]);
      },
    );
  }
}
