import 'package:flutter/material.dart';
import 'package:foodpanda/Screens/Food/popular_food_details.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Screens/Food/recommended_food.dart';
import 'Screens/Home/main_home.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RecommendedFoodDetails(),
    );
  }
}