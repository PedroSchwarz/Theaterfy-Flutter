import 'package:flutter/material.dart';
import 'package:alaska/alaska.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_bloc.dart';
import 'package:movies/features/movies_list/bloc/movies_state.dart';
import 'package:movies/features/movies_list/use_case/models/movie_model.dart';
import 'package:movies/features/movies_list/widgets/item/featured_movie.dart';
import 'package:movies/features/movies_list/widgets/item/movie_item.dart';

class MoviesGrid extends StatefulWidget {
  final List<MovieModel> movies;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onNextPage;

  const MoviesGrid({
    super.key,
    required this.movies,
    required this.onRefresh,
    required this.onNextPage,
  });

  @override
  State<MoviesGrid> createState() => _MoviesGridState();
}

class _MoviesGridState extends State<MoviesGrid> {
  final controller = ScrollController();
  late MoviesBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<MoviesBloc>(context);
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
    final theme = context.alaska;

    return RefreshIndicator(
      edgeOffset: 100,
      onRefresh: widget.onRefresh,
      child: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Now Playing'),
              centerTitle: false,
              titlePadding: EdgeInsets.all(theme.sizes.spacing.x400),
            ),
          ),
          SliverToBoxAdapter(
            child: FeaturedMovie(
              movie: widget.movies.first,
              controller: controller,
            ),
          ),
          SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: theme.sizes.spacing.x300,
              mainAxisSpacing: theme.sizes.spacing.x300,
              childAspectRatio: 0.9,
            ),
            itemCount: widget.movies.length - 1,
            itemBuilder: (_, int index) {
              final position = index + 1;
              final movie = widget.movies[position];
              return MovieItem(
                movie: movie,
                position: position,
              );
            },
          ),
          SliverToBoxAdapter(
            child: BlocBuilder(
              bloc: bloc,
              buildWhen: (MoviesState previous, MoviesState current) {
                if (previous is MoviesSuccess && current is MoviesSuccess) {
                  return previous.isLoadingMore != current.isLoadingMore;
                }
                return false;
              },
              builder: (_, MoviesState state) => state.maybeMap(
                success: (value) => value.isLoadingMore
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: theme.sizes.spacing.x800,
                        ),
                        child: const AppLoader(),
                      )
                    : SizedBox(height: theme.sizes.spacing.x800),
                orElse: () => SizedBox(height: theme.sizes.spacing.x800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
