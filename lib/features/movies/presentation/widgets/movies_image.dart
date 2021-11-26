import 'package:flutter/material.dart';

class MoviesImage extends StatelessWidget {
  final String? imageUrl;

  const MoviesImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageUrl != null
        ? Image.network(
            imageUrl!,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low,
          )
        : const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          );
  }
}
