import 'package:flutter/material.dart';

class MovieItemGradient extends StatelessWidget {
  const MovieItemGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.3, 0.5, 1],
          ),
        ),
      ),
    );
  }
}
