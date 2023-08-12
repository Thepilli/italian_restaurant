import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurant_delivery/constants/applystyle.dart';
import 'package:restaurant_delivery/constants/colors.dart';
import 'package:restaurant_delivery/presentation/router/app_route_page.dart';
import 'package:restaurant_delivery/presentation/router/app_route_name.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    debugPrint(screenSize.toString());
    return ScreenUtilInit(
      designSize: const Size(411.4, 866.3),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          getPages: AppRoutePage.routes,
          initialRoute: AppRouteName.root,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: true,
              primaryColor: AppColors.jPrimaryColor,
              scaffoldBackgroundColor: AppColors.lightBg,
              appBarTheme: AppBarTheme(
                  centerTitle: true,
                  backgroundColor: AppColors.whiteColor,
                  titleTextStyle: appstyle(20, AppColors.textDarkColor, FontWeight.w400))),
        );
      },
    );
  }
}
