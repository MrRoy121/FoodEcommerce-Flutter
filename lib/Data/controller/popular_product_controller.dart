import 'package:foodpanda/Data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic>_popularproductlist=[];
  List<dynamic> get populatproductlist => _popularproductlist;

  Future<void> getPopularProductslist()async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      _popularproductlist=[];
      //_popularproductlist.addAll();
    }else{

    }
  }
}