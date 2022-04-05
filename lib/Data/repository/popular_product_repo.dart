import 'package:foodpanda/Data/Api/api_cilent.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList(){
    return apiClient.getData("end point url");
  }
}