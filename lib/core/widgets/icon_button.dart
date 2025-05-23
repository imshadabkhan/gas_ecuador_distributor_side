import 'package:flutter/material.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';

import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';



class ButtonWithIcon extends StatelessWidget {
  String? title;
  IconData? icon;
  Callback? onTap;
  var mainColor;
  var bgColor;
  double? size;



  ButtonWithIcon({super.key, required this.title,required this.icon,required this.onTap,required this.mainColor,this.bgColor,this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),

        decoration: BoxDecoration(
          color: bgColor??Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: mainColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: size??15,color:  mainColor,),
            Flexible(child: Texts.textBlock("  $title",
                size: size??10,color:  mainColor,fontFamily:"RobotoRegular",fontWeight:FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
