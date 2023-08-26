import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/search/bloc/search_bloc.dart';
import 'package:movies/features/search/widgets/search_page.dart';

class SearchProvider extends StatelessWidget {
  const SearchProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CoreInjection.locator.get<SearchBloc>(),
      child: const SearchPage(),
    );
  }
}
