import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container( 
              color: TColors.primary,
              child: SizedBox(height: 400,
                child: Stack(
                  children: [

    // decoration containers call by common/ circular containers
     Positioned( top: -150, right: -250,
     child: TCircularContainer(backgrounColor: TColors.textWhite.withOpacity(0.1),)),
     Positioned( top: 100, right: -300,
    child: TCircularContainer(backgrounColor: TColors.textWhite.withOpacity(0.1),)),
                
                 
                
                  ],
                ),
              ),
            )
            
          ],
        ),
      )





    );
  }
}


