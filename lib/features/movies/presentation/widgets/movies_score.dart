import 'package:flutter/material.dart';

class MoviesScore extends StatelessWidget {
  final double votes;
  final double size;

  const MoviesScore({
    Key? key,
    required this.votes,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(1000)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.purple.withOpacity(0.4),
                offset: const Offset(0, 2),
                spreadRadius: 5,
              ),
            ],
          ),
          height: size,
          width: size,
          child: TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: votes / 10,
            ),
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 2000),
            builder: (context, double value, child) {
              return CircularProgressIndicator(
                strokeWidth: 10 * (size / 100),
                backgroundColor: Colors.grey,
                color: Colors.purple,
                value: value,
              );
            },
          ),
        ),
        if (size > 70)
          Container(
            height: size * 0.95,
            width: size * 0.95,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
              borderRadius: const BorderRadius.all(Radius.circular(1000)),
            ),
            child: Text(
              votes.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
      ],
    );
  }
}
