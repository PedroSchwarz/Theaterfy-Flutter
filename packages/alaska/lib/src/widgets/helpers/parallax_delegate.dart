import 'package:flutter/material.dart';

class ParallaxFlowDelegate extends FlowDelegate {
  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final bool canPrint;
  final GlobalKey backgroundImageKey;

  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.canPrint,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(width: constraints.maxWidth);
    // return BoxConstraints.tightFor(height: constraints.maxHeight);
    // return BoxConstraints.tightFor(width: constraints.maxWidth);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    // final listItemOffset = listItemBox.localToGlobal(
    //   listItemBox.size.topCenter(Offset.zero),
    //   ancestor: scrollableBox,
    // );
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    // final scrollFraction =
    //     (listItemOffset.dx / viewportDimension).clamp(0.0, 1.0);
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    // final verticalAlignment = Alignment(scrollFraction * 2 - 1, 0.0);
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    // context.paintChild(
    //   0,
    //   transform:
    //       Transform.translate(offset: Offset(childRect.left, 0.0)).transform,
    // );
    // context.paintChild(
    //   0,
    //   transform: Transform.translate(
    //     offset: Offset(
    //       0.0,
    //       childRect.top,
    //     ),
    //   ).transform,
    // );

    // context.paintChild(
    //   0,
    //   transform: Matrix4.compose(
    //     vector.Vector3(0.0, childRect.top, 0.0),
    //     vector.Quaternion.euler(0, 0, 0),
    //     vector.Vector3(1, 1, 1),
    //   ),
    // );
    context.paintChild(0,
        transform: Transform.translate(
          offset: Offset(
            0,
            childRect.top,
          ),
        ).transform);
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
