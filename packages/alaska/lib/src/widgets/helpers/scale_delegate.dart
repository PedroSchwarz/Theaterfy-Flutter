import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ScaleFlowDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContext;

  ScaleFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
  }) : super(repaint: scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double scaleBy = 1;
    double yOffset = 0;
    scaleBy = (scrollable.position.pixels / 2000) + 1;
    yOffset = (scrollable.position.pixels / 8) * -1;
    if (scaleBy < 1) scaleBy = 1;
    if (scaleBy > 1.1) scaleBy = 1.1;
    if (yOffset < 0) yOffset = 0;

    context.paintChild(
      0,
      transform: Matrix4.compose(
        vector.Vector3(0, yOffset, 0),
        vector.Quaternion(0, 0, 0, 0),
        vector.Vector3(scaleBy, scaleBy, scaleBy),
      ),
    );
  }

  @override
  bool shouldRepaint(ScaleFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext;
  }
}
