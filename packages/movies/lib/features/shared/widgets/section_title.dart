import 'package:alaska/alaska.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return SliverAppBar(
      expandedHeight: 100,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(title, style: theme.typography.h2),
        centerTitle: false,
        titlePadding: EdgeInsets.all(theme.sizes.spacing.x400),
      ),
    );
  }
}
