import 'package:flutter/widgets.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //define all 3 paths curve
    var path = Path();
    path.lineTo(0, size.height);

//1st path curve
    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

//2nd path curve
    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 50, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

//3rd path curve
    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


