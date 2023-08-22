import 'package:alaska/alaska.dart';
import 'package:flutter/material.dart';

class MovieBackground extends StatelessWidget {
  final String url;
  final RemoteImageSize size;

  const MovieBackground({
    super.key,
    required this.url,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey backgroundImageKey = GlobalKey();

    return Flow(
      delegate: ParallaxFlowDelegate(
        canPrint: true,
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: backgroundImageKey,
      ),
      children: [
        RemoteImage(
          path: url,
          key: backgroundImageKey,
          size: size,
        ),
      ],
    );
  }
}
