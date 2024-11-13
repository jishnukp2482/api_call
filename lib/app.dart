import 'package:api_call/api_app/presentation/routes/app_pages.dart';
import 'package:api_call/api_app/presentation/routes/app_routes.dart';
import 'package:api_call/api_app/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.loginpage,
      getPages: AppRoutes.routes,
    );
  }
}
