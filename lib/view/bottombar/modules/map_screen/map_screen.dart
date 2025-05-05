import 'dart:async';

import 'package:flutter/material.dart';

import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/routes/app_routes.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/custom_button.dart';

import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/map_screen/order_details.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key});
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:  Texts.textBold('Pedidos pendientes',size: 22),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Widgets.heightSpaceH05,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomButton(
                    borderColor: ColorConstants.redColor,
                    textColor: ColorConstants.redColor,
                    label: "Actualizar mis pedidos en el mapa",
                  ),
                ),



                Widgets.heightSpaceH2,

                Expanded(
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),





              ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
              child: CustomButton(
                onTap: () {
                  // Get.toNamed(AppRoutes.orderDetails);
                  Get.to(()=>OrderTrackingPage());
                },
                backgroundColor: ColorConstants.blackColor,
                label: 'Generar mejor ruta',
              ),
            ),


          ],
        ),
      ),
    );
  }
}
