import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_shopping_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.getnavbar(),
      getPages: AppPages.routes,
    );
  }
}
