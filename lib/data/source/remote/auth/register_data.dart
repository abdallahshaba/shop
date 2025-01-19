import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shop/core/classes/handiling_request.dart';
import 'package:shop/core/constant/app_link_api.dart';

class RegisterData {
  HandilingRequest handilingRequest = Get.put(HandilingRequest());

  getData(String username , String email , String password , String phone)async{
    var response = await handilingRequest.postData(AppLink.register, {
      "name" : username,
      "phone" : phone,
      "email" : email,
      "password" : password
    } , {});
    return response.fold((l) => l, (r) => r);
  }
}