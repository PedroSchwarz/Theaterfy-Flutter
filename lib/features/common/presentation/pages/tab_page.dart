import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/di/injection_container.dart';
import 'package:theaterfy/features/common/presentation/cubits/tab_cubit.dart';
import 'package:theaterfy/features/common/presentation/widgets/tab_content.dart';
import 'package:theaterfy/features/common/presentation/widgets/tab_header.dart';
import 'package:theaterfy/features/common/presentation/widgets/tabs_controller.dart';
import 'package:theaterfy/features/movies/presentation/cubits/movies_cubit.dart';

class TabPage extends StatelessWidget {
  static const String routeName = '/tab';

  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesCubit = sl<MoviesCubit>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<TabCubit>(),
        ),
        BlocProvider.value(
          value: moviesCubit..callGetMovies(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: NotificationListener(
            onNotification: (ScrollEndNotification notification) {
              moviesCubit.listenGridScroll(notification: notification);
              return true;
            },
            child: CustomScrollView(
              controller: moviesCubit.scrollController,
              physics: const BouncingScrollPhysics(),
              slivers: const [
                TabHeader(),
                TabsController(),
                TabContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
