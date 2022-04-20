import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/core/components/custom_shimmer.dart';
import 'package:swivt_challenge/core/components/movie_list_tile.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/applications/genre_movie_bloc/genre_movie_bloc.dart';

class GenreMoviesScreen extends StatefulWidget {
  const GenreMoviesScreen({
    Key? key,
    required this.genreId,
    required this.genreName,
  }) : super(key: key);
  final String genreName;
  final int genreId;

  @override
  State<GenreMoviesScreen> createState() => _GenreMoviesScreenState();
}

class _GenreMoviesScreenState extends State<GenreMoviesScreen> {
  @override
  void initState() {
    inject<GenreMovieBloc>().add(
      GetMovieByGenre(genreId: widget.genreId),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(widget.genreName.toUpperCase()),
      ),
      body: BlocBuilder<GenreMovieBloc, GenreMovieState>(
        bloc: inject<GenreMovieBloc>(),
        builder: (context, state) {
          if (state is GenreMovieLoading) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomShimmer(
                      baseColor: AppColors.transparentColor,
                      highlightColor: Colors.grey.shade100,
                      widget: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    );
                  }),
            );
          }
          if (state is GenreMovieLoaded) {
            final data = state.movieResponse;

            return ListView.builder(
                itemCount: data.results.length,
                itemBuilder: (context, index) {
                  final movie = data.results[index];
                  return MovieListTile(movieData: movie);
                });
          }
          if (state is GenreMovieError) {
            return const Text('Unable to fetch');
          }
          return const SizedBox();
        },
      ),
    );
  }
}
