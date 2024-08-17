import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';

class TSHadowStyle {

  static final veticalProductShaddow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));


  static final horizontalProductShaddow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
      
}
