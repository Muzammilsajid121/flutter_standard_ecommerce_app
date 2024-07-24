import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_clippper_widget.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container()
              // Center(
              //   child: Text('Welcome to Home Screen', style: Theme.of(context).textTheme.bodyLarge,),
              // ),


              
              ),

              // Container(
              //     height: 600,
              // color: Colors.blue, // For demonstration
              // child: Center(
              //   child: Text(
              //     'More content here',
              //     style: TextStyle(
              //       fontSize: 24,
              //       color: Colors.white,
              //     ),
              //   ),
              // ))
         
                  
                    ],
                  ),
                ),
              );

  }
}






// class clipPathCurveEdge extends StatelessWidget {
//   const clipPathCurveEdge({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return   ClipPath(
//           //from common widgets/ customshapes
//               clipper: TCustomCurvedEdges(),
//               child: Container( 
//                 color: TColors.primary,
//                   //sizedbox is liay lagaya takay 2 container diay stack m abhi to dono gayab hojatay
//                 child: SizedBox(height: 400,
//                   child: Stack(
//                     children: [
              
//                   // decoration containers call by common/ circular containers
//                    Positioned( top: -150, right: -250,
//                    child: TCircularContainer(backgrounColor: TColors.textWhite.withOpacity(0.1),)),
//                    Positioned( top: 100, right: -300,
//                   child: TCircularContainer(backgrounColor: TColors.textWhite.withOpacity(0.1),)),
                  
                   
                  
//                     ],
//                   ),
//                 ),
//               ),
//             );



//   }
// }