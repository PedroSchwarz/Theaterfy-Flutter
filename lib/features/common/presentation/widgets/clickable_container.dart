import 'package:flutter/material.dart';

class ClickableContainer extends StatelessWidget {
  final Widget child;
  final double radius;
  final Function() action;

  const ClickableContainer({
    Key? key,
    required this.child,
    this.radius = 0,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        radius: radius,
        onTap: action,
        child: child,
      ),
    );
  }
}
