import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/my_column.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorConstants.tableBlueColor,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 10,
            children: [

              MyColumn(title: 'Matricula',subTitle: "ABC0146",titleColor: ColorConstants.lightGreyTextColor,subTitleColor: ColorConstants.whiteColor,),
              MyColumn(title: 'Fecha',subTitle: "13/04/2025",titleColor: ColorConstants.lightGreyTextColor,subTitleColor: ColorConstants.whiteColor,),
              MyColumn(title: 'Hora local',subTitle: "12:00 PM",titleColor: ColorConstants.lightGreyTextColor,subTitleColor: ColorConstants.whiteColor,),
            ],
          ),
          Widgets.heightSpaceH1,
          Widgets.customDivider(color: ColorConstants.whiteColor),
          Widgets.heightSpaceH1,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,


                children: [
                  MyColumn(title: 'Estado',subTitle: "inactivo",titleColor: ColorConstants.whiteColor,subTitleColor: ColorConstants.lightGreyTextColor,),
                  Widgets.widthSpaceW2,
                  Padding(
                    padding:  EdgeInsets.only(bottom: 1.0),
                    child: Container(height: 10.h,width: 10.w,decoration: BoxDecoration(
                        color: ColorConstants.redColor,
                        shape: BoxShape.circle
                    ),),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(

                      style:ButtonStyle(
                        backgroundColor:  WidgetStateProperty.all<Color?>(ColorConstants.greenColor),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Set your desired radius here
                          ),
                        ),
                      ),
                      onPressed: (){}, child: Center(
                    child: Row(
                      children: [
                        Texts.textNormal("Activar",color: ColorConstants.whiteColor,size: 14),
                        Widgets.widthSpaceW1,
                        Image.asset(Assets.turnOffIcon,height:14,),
                      ],
                    ),
                  )),
                  Widgets.heightSpaceH1,
                  Texts.textNormal("Habilitar o deshabilitar ruta",size: 12,color: ColorConstants.whiteColor),


                ],)

            ],
          ),

        ],
      ),
    );
  }
}