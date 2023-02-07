import 'package:flutter/material.dart';
import 'package:studentnation/constants/assetsconstant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studentnation/theme/pallete.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.snlogo,
        color: Pallete.yellowColor,
        height: 40,
      ),
      centerTitle: true,
    );
  }
}