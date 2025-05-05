import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/client_card_widget.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/home_info_card.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final HomeScreenController controller=Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(automaticallyImplyLeading:false,title:Image.asset(Assets.appLogo, height: 40.h),centerTitle: true,elevation: 0,scrolledUnderElevation: 0,backgroundColor: ColorConstants.whiteColor,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Texts.textNormal("Hola, bienvenido de nuevo!",size: 12,color: ColorConstants.greyTextColor),
              Texts.textBold("Diego Leon", size: 18),
           Widgets.heightSpaceH1,
              InfoCard(),

              Widgets.heightSpaceH1,

              Texts.textNormal("Tu saldo",color: ColorConstants.greyTextColor,size: 14),
              Widgets.heightSpaceH05,
              Texts.textNormal("\$120.00 USD",size: 18,color: ColorConstants.blackColor),
              Widgets.heightSpaceH05,
              Widgets.divider(),
              Widgets.heightSpaceH05,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(child:Texts.textNormal("Aceptar automáticamente todos los pedidos",size: 14,textAlign: TextAlign.start),
                  ),

                  Obx(()=>
                    Transform.scale(
                      scale: 0.8, // Adjust scale for smaller size
                      child: Switch(
                        value: controller.switchValue.value,
                        onChanged: (_) {
                          controller.toggleSwitch();

                        },
                        activeColor: Colors.white, // Thumb color
                        activeTrackColor: Colors.green, // Track color when ON
                      ),
                    ),),
                 ]


              ),
              Widgets.heightSpaceH05,

              ClientCard()
            ],
          ),
        ),
      ),
    );
  }
}






// MyColumn(title: 'Orden', subTitle: "2 refills, Gas Tank", titleColor: ColorConstants.greyTextColor, subTitleColor: ColorConstants.blackColor),



