import 'package:flutter/material.dart';

class AppPinnedHeader extends SliverPersistentHeaderDelegate {
  final Widget content;
  final double max;
  final double? min;

  AppPinnedHeader({required this.content, required this.max, this.min});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) =>
      content;

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min ?? max;

  @override
  bool shouldRebuild(
    covariant SliverPersistentHeaderDelegate oldDelegate,
  ) =>
      false;
}
