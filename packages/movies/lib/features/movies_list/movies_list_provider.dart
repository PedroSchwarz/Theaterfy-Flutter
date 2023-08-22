import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_event.dart';
import 'package:movies/features/movies_list/widgets/movies_list_page.dart';

class MoviesListProvider extends StatelessWidget {
  const MoviesListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CoreInjection.locator.get<MoviesBloc>()
        ..add(
          MoviesStarted(),
        ),
      child: const MoviesListPage(),
    );
  }
}
