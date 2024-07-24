import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class TCurveEdgeWidget extends StatelessWidget {
  const TCurveEdgeWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}