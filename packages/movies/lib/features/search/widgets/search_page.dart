import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/search/bloc/search_bloc.dart';
import 'package:movies/features/search/bloc/search_event.dart';
import 'package:movies/features/search/bloc/search_state.dart';
import 'package:movies/features/search/widgets/search_bar.dart';
import 'package:movies/features/shared/widgets/grid_loader.dart';
import 'package:movies/features/shared/widgets/movies_grid.dart';
import 'package:movies/features/shared/widgets/section_title.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = ScrollController();
  late SearchBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<SearchBloc>(context);
    controller.addListener(() async {
      if (controller.position.pixels >
          controller.position.maxScrollExtent + 100) {
        bloc.state.whenOrNull(
          success: (_, currentPage, ___, isLoadingMore, ____) {
            if (isLoadingMore == false) {
              bloc.add(SearchNextPage(currentPage + 1));
            }
          },
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return AppScaffold(
      child: BlocBuilder(
        bloc: bloc,
        builder: (context, SearchState state) {
          return CustomScrollView(
            controller: controller,
            slivers: [
              const SectionTitle(title: 'Search Movie'),
              QuerySearchBar(
                onSearch: (query) => bloc.add(SearchQueried(query)),
              ),
              state.map(
                loading: (_) => const SliverFillRemaining(child: AppLoader()),
                success: (value) => MoviesGrid(movies: value.movies),
                empty: (_) => SliverFillRemaining(
                  child: Center(
                    child: Text(
                      'No movies found.',
                      style: theme.typography.h3,
                    ),
                  ),
                ),
                failure: (value) => SliverFillRemaining(
                  child: AppErrorView(
                    message: value.message,
                    icon: Icons.refresh,
                    onIconPressed: () {
                      bloc.add(SearchQueried(''));
                    },
                  ),
                ),
              ),
              state.maybeMap(
                success: (value) => SliverToBoxAdapter(
                  child: GridLoader(showLoader: value.isLoadingMore),
                ),
                orElse: () => const SliverToBoxAdapter(),
              ),
            ],
          );
        },
      ),
    );
  }
}
