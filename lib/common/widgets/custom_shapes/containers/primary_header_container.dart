import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_clippper_widget.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
        child: Container(
      color: TColors.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(height: 400,
        child: Stack(
          children: [
        //Background Custom Shapes
        Positioned(top: -150, right: -250,
             child: TCircularContainer( backgrounColor: TColors.textWhite.withOpacity(0.1))),
        
        Positioned(top: 150, right: -300,
             child: TCircularContainer( backgrounColor: TColors.textWhite.withOpacity(0.1))),
//child
  child
            // Container(height: 300,)
            // Text('HOLAA',style: TextStyle(fontSize: 200),)
        
          ],
        ),
      ),
    ));
  }
}