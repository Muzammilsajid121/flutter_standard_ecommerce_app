
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,  
  );
}

//call paddingWithAppbarHeight where you need all these