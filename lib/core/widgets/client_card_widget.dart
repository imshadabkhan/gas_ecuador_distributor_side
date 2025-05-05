import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/padding_constants.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/custom_button.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/my_column.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';

class ClientCard extends StatelessWidget {
  const ClientCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: ColorConstants.whiteColor,
      child: Padding(
        padding: PaddingConstants.screenPadding.copyWith(top: 20,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 60.h,
                  width: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: AssetImage(Assets.profileImage),)
                    
                  ),
                ),
                Widgets.widthSpaceW2,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Texts.textBold("John Doe",size: 16),
                        Widgets.widthSpaceW1,
                        Image.asset(Assets.starIcon,height: 15,),
                        Texts.textNormal("(4.0)",size: 12,color: ColorConstants.greyTextColor),
                      ],
                    ),
                    RichText(text: TextSpan(children: [
                      TextSpan(text: "Orden# ",style: TextStyle(color: ColorConstants.blackColor)),

                      TextSpan(text: "001234",style: TextStyle(color: ColorConstants.greyTextColor)),
                    ]))

                  ],
                )
              ],
            ),
            Divider(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Expanded(child: MyColumn(title: 'Fecha', subTitle: "06/05/2025", titleColor: ColorConstants.greyTextColor, subTitleColor: ColorConstants.blackColor)),
                SizedBox(width: 8.w),
                Expanded(child: MyColumn(title: 'Distancia', subTitle: "7 km", titleColor: ColorConstants.greyTextColor, subTitleColor: ColorConstants.blackColor)),
                SizedBox(width: 8.w),

              ],
            ),

            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Expanded(child: MyColumn(title: 'Distancia', subTitle: "7 km", titleColor: ColorConstants.greyTextColor, subTitleColor: ColorConstants.blackColor)),
                SizedBox(width: 8.w),
                Expanded(child: MyColumn(title: 'dirección', subTitle: "Av Rio Zamora y Acceso 5", titleColor: ColorConstants.greyTextColor, subTitleColor: ColorConstants.blackColor)),
                SizedBox(width: 8.w),

              ],
            ),
            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                MyColumn(title: 'Orden', subTitle: "2 refills, Gas Tank", titleColor: ColorConstants.greyTextColor, subTitleColor: ColorConstants.blackColor),
                SizedBox(width: 8.w),


              ],
            ),
            Widgets.heightSpaceH3,
            CustomButton(
              label:"Accept",
              backgroundColor: ColorConstants.greenColor,
              textColor: ColorConstants.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}