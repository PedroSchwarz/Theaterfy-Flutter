import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_bloc.dart';
import 'package:movies/features/shared/widgets/grid_loader.dart';
import 'package:movies/features/shared/widgets/movies_grid.dart';
import 'package:movies/features/movies_list/widgets/item/featured_movie.dart';
import 'package:movies/features/shared/models/movie_model.dart';
import 'package:movies/features/shared/widgets/section_title.dart';

class MoviesBody extends StatefulWidget {
  final List<MovieModel> movies;
  final bool isLoadingMore;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onNextPage;

  const MoviesBody({
    super.key,
    required this.movies,
    required this.isLoadingMore,
    required this.onRefresh,
    required this.onNextPage,
  });

  @override
  State<MoviesBody> createState() => _MoviesBodyState();
}

class _MoviesBodyState extends State<MoviesBody> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    final bloc = BlocProvider.of<MoviesBloc>(context);
    controller.addListener(() async {
      if (controller.position.pixels >
          controller.position.maxScrollExtent + 100) {
        await bloc.state.whenOrNull(
          success: (totalPages, currentPage, movies, isLoadingMore) async {
            if (isLoadingMore == false) {
              await widget.onNextPage();
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
    return RefreshIndicator(
      edgeOffset: 100,
      onRefresh: widget.onRefresh,
      child: CustomScrollView(
        controller: controller,
        slivers: [
          const SectionTitle(title: 'Now Playing'),
          SliverToBoxAdapter(
            child: FeaturedMovie(
              movie: widget.movies.first,
              controller: controller,
            ),
          ),
          MoviesGrid(movies: widget.movies, indexOffset: 1),
          SliverToBoxAdapter(
            child: GridLoader(
              showLoader: widget.isLoadingMore,
            ),
          )
        ],
      ),
    );
  }
}
