import 'package:foodpanda/widgets/Small_Text.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseURL;

  late Map<String, String> _mainHeaders;

  ApiClient({ required this.appBaseURL}){
    baseUrl = appBaseURL;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type':'Application/json; charset=UTF-8',
      'Authorization':'Barer $token',

    };
  }

  Future<Response> getData(String uri,) async {
    try{
      Response r = await get(uri);
      return r;
    }catch(e){
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}