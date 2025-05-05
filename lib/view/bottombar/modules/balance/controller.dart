import 'package:get/get.dart';

class BalanceController extends GetxController {
  RxBool paypalSelectedValue = false.obs;
  RxBool visaSelectedValue = false.obs;

  void togglePaypalValue() {
    paypalSelectedValue.value = true;
    visaSelectedValue.value = false;
  }

  void toggleVisaSelectedValue() {
    visaSelectedValue.value = true;
    paypalSelectedValue.value = false;
  }
}
