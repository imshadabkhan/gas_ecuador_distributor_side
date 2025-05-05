import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/padding_constants.dart';
import 'package:gas_ecuador_distributor_side/core/routes/app_routes.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/custom_button.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/view/starting/onboarding/controller.dart';

import 'package:get/get.dart';

import '../../../core/widgets/widgets.dart';

class BoardingView extends StatelessWidget {
   BoardingView({super.key});
  final OnboardingController controller=Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: PaddingConstants.screenPaddingHalf,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Widgets.heightSpaceH2,
              Texts.textBold("Entrega de gas a domicilio..?", size: 20),
              Widgets.heightSpaceH05,
              Texts.textNormal("Rápido, seguro y eficiente", size: 14),
              Widgets.heightSpaceH1,
              Image.asset(
                Assets.onboardingImage,
                height: 300.h,
              ),
              Widgets.heightSpaceH1,
              Spacer(
                flex: 2,
              ),
              Texts.textBold("Iniciar sesión", size: 18),
              Widgets.heightSpaceH05,
              Texts.textNormal("Inicia sesión con tu número de móvil",
                  size: 14),
              Widgets.heightSpaceH2,
              CustomButton(
                height: 45,
                onTap: (){
                  Get.toNamed(AppRoutes.userLogin);
                },
                label: 'Iniciar sesión con el móvil',
                color: ColorConstants.whiteColor,
                icon: Image.asset(
                  Assets.whitePhoneIcon,
                  height: 20.h,
                  width: 20.w,
                ),
                backgroundColor: ColorConstants.primaryColor,
              ),
              Widgets.heightSpaceH1,
              Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                        () => SizedBox(
                      height: 14,
                      width: 14,
                      child: Checkbox(
                        side: BorderSide(color: ColorConstants.grayBorderColor),
                        value: controller.checkboxValue.value,
                        onChanged: (newValue) {
                          controller.toggleCheckBoxValue();
                          print('Checkbox toggled: ${controller.checkboxValue.value}');
                        },
                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return ColorConstants.orangeColor; // Active fill color
                            }
                            return ColorConstants.grayBorderColor.withOpacity(0.2); // Default fill
                          },
                        ),
                        checkColor: Colors.white, // Tick color when active
                      ),
                    ),
                  ),



                  Widgets.widthSpaceW2,
                  Texts.textNormal('I agree to the ', size: 10),
                  Texts.textNormal('Terms & Privacy Policy ',
                      color: ColorConstants.blackColor,
                      size: 10,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
