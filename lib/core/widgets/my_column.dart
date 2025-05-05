import 'package:flutter/material.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/text_widgets.dart';
import 'package:gas_ecuador_distributor_side/core/widgets/widgets.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({
    super.key,
    required this.title,
    required this.subTitle,
    required this.titleColor,
    required this.subTitleColor
  });
  final String? title;
  final String? subTitle;
  final Color titleColor;
  final Color subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.textNormal(title ?? '',size: 14,color: titleColor,textAlign: TextAlign.start,fontWeight: FontWeight.w400),
        Widgets.heightSpaceH05,
        Texts.textNormal(subTitle ?? "",size: 14,color: subTitleColor,textAlign: TextAlign.start,overflow: TextOverflow.ellipsis),

      ],);
  }
}