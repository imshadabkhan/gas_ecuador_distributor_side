import 'package:get/get.dart';

class LoginController extends GetxController{
  RxBool eyeValue=false.obs;

  void toggleValue(){
    eyeValue.value = !eyeValue.value;

  }


}