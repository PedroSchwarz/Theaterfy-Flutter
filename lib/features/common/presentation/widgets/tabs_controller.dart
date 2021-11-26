import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/features/common/presentation/cubits/tab_cubit.dart';
import 'package:theaterfy/features/common/presentation/widgets/tab_button.dart';

class TabsController extends StatelessWidget {
  const TabsController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final cubit = context.watch<TabCubit>();

    return SliverAppBar(
      backgroundColor: backgroundColor,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: Tabs.values
                  .map(
                    (tab) => TabButton(
                      action: () => cubit.setCurrentTab(tab),
                      active: cubit.state.currentTab == tab,
                      title: cubit.mapTabToLabel(tab),
                      icon: cubit.mapTabToIcon(tab),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
