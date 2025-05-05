import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Texts.textBold("Completa el pedido",
            size: 18.sp, color: ColorConstants.redColor),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
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
                  : ColorConstants.whiteColor,
              size: 14),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(desc,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,
              size: 14),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(vunit,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,
              size: 14),
        ),
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Texts.textNormal(total,
              color: isHeader == false
                  ? ColorConstants.blackColor
                  : ColorConstants.whiteColor,
              size: 14),
        ),
      ],
    );
  }
}
