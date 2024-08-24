import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({super.key,
  
      required this.itemcount,
      required this.itembuilder,
      this.mainAxisExtent = 288
      });
      
  final int itemcount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itembuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: itemcount,
        physics: const NeverScrollableScrollPhysics(),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent
            ),
            
        itemBuilder: itembuilder);
  }
}