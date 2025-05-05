import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/padding_constants.dart';
import 'package:gas_ecuador_distributor_side/core/routes/app_routes.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/custom_button.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingPage extends StatelessWidget {
  OrderTrackingPage({super.key});


  final bool delieveryCompleted = false;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
       automaticallyImplyLeading: true,
        centerTitle: true,
        title: Texts.textBold(delieveryCompleted?"Completa el pedido":'Detalles del pedido', size: 18),
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: ColorConstants.whiteColor,
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Center(
                    child: Texts.textNormal(delieveryCompleted?"":'Orden# 1242', size: 14),
                  )),
              delieveryCompleted?SizedBox(height: 0,): Widgets.heightSpaceH2,
              delieveryCompleted == false
                  ? SizedBox(
                      height: 200.h,
                      width: double.infinity,
                      child: GoogleMap(
                        mapType: MapType.terrain,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                      ),
                    )
                  : Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(color: ColorConstants.grayBorderColor),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        Assets.appLogo,
                        height: 60.h,
                      ),
                      Widgets.heightSpaceH05,
                      Texts.textNormal("Orden #1234",
                          size: 14.sp, fontWeight: FontWeight.w500),
                      Widgets.heightSpaceH1,
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: ColorConstants.grayBorderColor),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              decoration: BoxDecoration(
                                color: ColorConstants.tableGreyColor,
                                borderRadius:
                                BorderRadius.vertical(top: Radius.circular(8)),
                              ),
                              child: Center(
                                child: Text("Detalles de la factura",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConstants.blackColor)),
                              ),
                            ),
                            Table(
                              columnWidths: {
                                0: FixedColumnWidth(50.w),
                                1: FlexColumnWidth(),
                                2: FixedColumnWidth(60.w),
                                3: FixedColumnWidth(60.w),
                              },
                              children: [
                                _buildTableRow(
                                  "Cant",
                                  "Descripción",
                                  "V. Unit",
                                  "Total",
                                  isHeader: true,
                                ),
                                _buildTableRow(
                                    "2", "Recarga tanque gas", "\$3.25", "\$6.50"),
                                _buildTableRow(
                                    "1", "comision\naplicacion", "\$0.25", "\$0.25"),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                color: Color(0xFF455A64),
                                borderRadius:
                                BorderRadius.vertical(bottom: Radius.circular(8)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(right: 16.w),
                                child: Text("Total: 6.75 USD",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Widgets.heightSpaceH05,
          Expanded(
            child: Padding(
              padding: PaddingConstants.screenPaddingHalf,
              child: ListView(
                children: [
                  Widgets.heightSpaceH2,
                  MyIndicator(
                    icon: Assets.orangeTickIcon,
                    title: 'Orden creada',
                    subTitleHeading: "Fecha: ",
                    subTitle: '12/04/2025',
                    subTitle2: "6391 Elgin St. Celina, Delaware 10299",
                    subTitleHeading2: "Ubicación:",
                  ),
                  Widgets.heightSpaceH05,
                  MyIndicator(
                    icon: Assets.orangeTickIcon,
                    title: 'Información del cliente',
                    subTitleHeading: "Nombre: ",
                    subTitle: 'Mr. Marco Perez',
                    subTitle2: "",
                    subTitleHeading2: "",
                  ),
                  Widgets.heightSpaceH05,
                  MyIndicator(
                    icon: Assets.orangeTickIcon,
                    title: 'Detalles del pedido',
                    subTitleHeading: "",
                    subTitle:
                        '2 recargas de tanque de gasolina',
                    subTitle2: "",
                    subTitleHeading2: "",
                  ),
                  Widgets.heightSpaceH05,
                  MyIndicator(
                    icon: Assets.orangeRoundIndicatorIcon,
                    title: 'Detalles adicionales',
                    subTitleHeading:
                        "",
                    subTitle: 'Entregar en el restaurante Lolita.',
                    subTitle2: "",
                    subTitleHeading2: "",
                  )
                ],
              ),
            ),
          ),
          Widgets.heightSpaceH2,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                    child: CustomButton(
                  label: 'Llamar al conductor',
                  backgroundColor: ColorConstants.primaryColor,
                  fontSize: 12,
                  onTap: () {
                    // Get.toNamed(AppRoutes.ratingScreen);
                  },
                )),
                Widgets.widthSpaceW2,
                Expanded(
                    child: CustomButton(
                  label: delieveryCompleted?'Marcar como hecho':'Cancelar pedido',
                  backgroundColor: delieveryCompleted? ColorConstants.greenColor:ColorConstants.transparentColor,
                  borderColor: delieveryCompleted?ColorConstants.transparentColor:ColorConstants.redColor,
                  textColor:delieveryCompleted?ColorConstants.whiteColor:ColorConstants.redColor ,
                  fontSize: 12,
                  onTap: () {
                    // Get.toNamed(AppRoutes.ratingScreen);
                  },
                )),
              ],
            ),
          ),
          Widgets.heightSpaceH2,
        ],
      ),
    );
  }





  TableRow _buildTableRow(String cant, String desc, String vunit, String total,
      {bool isHeader = false}) {
    final style = TextStyle(
      fontSize: 13.sp,
      fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
      color: Colors.black,
    );

    return TableRow(
      decoration: BoxDecoration(
          color: isHeader ? ColorConstants.purpleColor : Colors.white,
          border: Border.all(color: ColorConstants.grayBorderColor)),
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(cant,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,textAlign: TextAlign.start,
              size: 14),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(desc,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,textAlign: TextAlign.start,
              size: 14),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(vunit,textAlign: TextAlign.start,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,
              size: 14),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(total,textAlign: TextAlign.start,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,
              size: 14),
        ),
      ],
    );
  }
}

class MyIndicator extends StatelessWidget {
  const MyIndicator({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitleHeading,
    required this.subTitle,
    required this.subTitleHeading2,
    required this.subTitle2,
  });

  final String icon;
  final String title;
  final String subTitleHeading;
  final String subTitle;
  final String subTitleHeading2;
  final String subTitle2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Column(
            children: [
              SizedBox(height: 15.h, child: Image.asset(icon)),
              Widgets.heightSpaceH05,
              // Optional: make height dynamic based on text content
              Container(
                width: 2.w,
                height: 52.h,
                // Adjust this manually or calculate dynamically
                color: ColorConstants.grayBorderColor,
              ),
            ],
          ),
        ),
        SizedBox(width: 10.w), // spacing between icon and text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts.textBold(title, size: 16, textAlign: TextAlign.start),
              Widgets.heightSpaceH05,
              if (subTitleHeading.isNotEmpty || subTitle.isNotEmpty)
                RichText(
                  text: TextSpan(
                    text: subTitleHeading,
                    style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: subTitle,
                        style: TextStyle(color: ColorConstants.greyTextColor,fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              Widgets.heightSpaceH05,
              if (subTitleHeading2.isNotEmpty || subTitle2.isNotEmpty)
                RichText(
                  text: TextSpan(
                    text: subTitleHeading2,
                    style: TextStyle(color: ColorConstants.blackColor,fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: subTitle2,
                        style: TextStyle(color: ColorConstants.greyTextColor,fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
