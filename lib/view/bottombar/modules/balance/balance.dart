import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/padding_constants.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/custom_button.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/balance/controller.dart';
import 'package:get/get.dart';

class MyBalance extends StatelessWidget {
  MyBalance({super.key});
  final BalanceController balanceController = Get.put(BalanceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Texts.textBold("Agregar saldo", size: 16),
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: ColorConstants.whiteColor,
      ),
      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texts.textBold("Seleccione método de pago", size: 14),

            Widgets.heightSpaceH05,
            Obx(
              () => GestureDetector(
                onTap: () {
                  balanceController.togglePaypalValue();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: balanceController.paypalSelectedValue.value
                            ? ColorConstants.selectedPaymentMethodColor
                            : ColorConstants.grayBorderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset(Assets.paypalIcon,
                          height: 24), // Replace with your image
                      SizedBox(width: 10.w),
                      Texts.textNormal("Paypal *2156", size: 14),
                      Widgets.widthSpaceW2,
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            color: ColorConstants.greenColor
                                .withAlpha((0.1 * 255).toInt()),
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: ColorConstants.darkGreen)),
                        child: Texts.textNormal("Por defecto",
                            size: 14, color: ColorConstants.darkGreen),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Widgets.heightSpaceH1,

            Obx(
              () => GestureDetector(
                onTap: () {
                  balanceController.toggleVisaSelectedValue();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: balanceController.visaSelectedValue.value
                            ? ColorConstants.selectedPaymentMethodColor
                            : ColorConstants.grayBorderColor),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 13,horizontal: 12),
                  child: Row(
                    children: [
                      Image.asset(Assets.visaIcon,
                          height: 15.h), // Replace with your image
                      SizedBox(width: 10),
                      Texts.textNormal("Credit Card",
                          size: 12, color: ColorConstants.blackColor),
                      Texts.textNormal(" *7451",
                          size: 12, color: ColorConstants.greyTextColor),
                    ],
                  ),
                ),
              ),
            ),
            Widgets.heightSpaceH05,
            Center(
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.red),
                label: Texts.textNormal("Agregar método de pago",
                    color: ColorConstants.redColor, size: 14,fontWeight: FontWeight.bold),
              ),
            ),
            Widgets.heightSpaceH05,

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                color: ColorConstants.blackColor.withAlpha((.8 * 255).toInt()),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Texts.textNormal("Ingrese la cantidad",
                     size: 14,color: ColorConstants.whiteColor),
                  SizedBox(height: 4.h),
                  Text("\$0.00 USD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold)),
                  Widgets.heightSpaceH2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) => Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: ColorConstants.redColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("\$10"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Widgets.heightSpaceH2,

            // Note
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Texts.textBold("Nota ",
                    color: ColorConstants.blackColor, size: 16),
                Texts.textBold("*", color: ColorConstants.redColor, size: 16),
              ],
            ),

            Widgets.heightSpaceH1,
            Texts.textNormal(
                "Por cada pedido entregado, la app descuenta 0.25 céntimos de tu saldo. Recuerde que este importe lo paga el cliente y lo cobras al cargar la factura.",
                color: ColorConstants.greyTextColor,
                textAlign: TextAlign.start,
                size: 14),

            Widgets.heightSpaceH3,

            // Button
            CustomButton(
              label: "Recarga de forma segura",
              backgroundColor: ColorConstants.orangeColor,
              textColor: ColorConstants.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
