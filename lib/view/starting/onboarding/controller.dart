 import 'package:get/get.dart';

class OnboardingController extends GetxController{
  RxBool checkboxValue=false.obs;

  void toggleCheckBoxValue(){
    checkboxValue.value = !checkboxValue.value;
  }


}