import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/padding_constants.dart';
import 'package:gas_ecuador_distributor_side/core/routes/app_routes.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/custom_button.dart';

import 'package:gas_ecuador_distributor_side/core/widgets/entry_field.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';
import 'package:gas_ecuador_distributor_side/view/auth/controller.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});
  final LoginController controller=Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.whiteColor,
          title: SizedBox(
              height: 55.h,
              child: Image.asset(
                Assets.appLogo,
              )),
          centerTitle: true,
        ),
        body: Padding(
          padding: PaddingConstants.screenPaddingHalf,
          child: Column(
            children: [
              Texts.textBold("Bienvenido de nuevo!", size: 20),
              Widgets.heightSpaceH05,
              Texts.textNormal(
                "Inicie sesión con sus credenciales para comenzar."
                  ,size: 14),
              Widgets.heightSpaceH3,

              EntryField(
                prefixIcon: Assets.unfilledProfileIcon,
                label: "Usuario",
                hint: "Usuario",
              ),
              Widgets.heightSpaceH1,
              Obx(()=>   EntryField(
                onTrailingTap: (){
                  controller.toggleValue();
                },
                obscureText:controller.eyeValue.value?false:true ,
                prefixIcon: Assets.lockIcon,
                label: "Contrasena",
                hint: "Contrasena",
                suffixIcon: controller.eyeValue.value?Icons.visibility_off_outlined:Icons.remove_red_eye_outlined,
              ),),
          Align(
            alignment: Alignment.centerRight,
            child:           Texts.textNormal("olvidado tu contraseña?",textAlign: TextAlign.end,size: 14,color: ColorConstants.orangeColor),

          ),

          Widgets.heightSpaceH2,
              CustomButton(
                onTap: (){
                    Get.toNamed(AppRoutes.bottomBarView);
                },
                label: "Ingresar",
                backgroundColor: ColorConstants.primaryColor,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Texts.textNormal('No tienes una cuenta? ',size: 14),
                Texts.textNormal('Signup',color: ColorConstants.orangeColor,size: 14),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
