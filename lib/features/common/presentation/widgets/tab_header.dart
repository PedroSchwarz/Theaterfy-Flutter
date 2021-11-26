import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/features/common/presentation/cubits/tab_cubit.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final cubit = context.watch<TabCubit>();

    return SliverAppBar(
      expandedHeight: 150,
      shadowColor: Colors.transparent,
      backgroundColor: backgroundColor,
      snap: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        title: Text(
          cubit.mapTabToLabel(cubit.state.currentTab),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
