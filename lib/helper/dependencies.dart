import 'package:foodpanda/Data/Api/api_cilent.dart';
import 'package:foodpanda/Data/controller/popular_product_controller.dart';
import 'package:foodpanda/Data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void>init()async {

  Get.lazyPut(()=>ApiClient(appBaseURL: "appBaseURL"));
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}