import 'package:flutter/material.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/padding_constants.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/order_ticket_widget.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';

class Historial extends StatelessWidget {
  const Historial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: ColorConstants.whiteColor,
        title: Texts.textBold("Mis historia", size: 20),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: SingleChildScrollView(
          child: Padding(
            padding:PaddingConstants.contentPadding,
            child: Column(
              spacing: 10,
              children: [
                Texts.textNormal("Aquí están todos los pedidos aceptados y cancelados de los últimos 30 días.",size: 14,textAlign: TextAlign.start),
                Widgets.heightSpaceH05,
                OrderTicketWidget(),
                OrderTicketWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
