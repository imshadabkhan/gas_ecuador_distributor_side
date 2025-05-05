import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  RxBool switchValue=false.obs;

  void toggleSwitch(){
    switchValue.value=!switchValue.value;
         }


}