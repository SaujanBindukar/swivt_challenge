import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/core/components/custom_shimmer.dart';
import 'package:swivt_challenge/core/extensions/image_extension.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/movies/all_movies.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/movies/movie_details.dart';

class PopularMoviesList extends StatefulWidget {
  const PopularMoviesList({Key? key}) : super(key: key);

  @override
  State<PopularMoviesList> createState() => _PopularMoviesListState();
}

class _PopularMoviesListState extends State<PopularMoviesList> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BlocBuilder<MoviesBloc, MoviesState>(
        bloc: inject<MoviesBloc>(),
        builder: (context, state) {
          final data = state is MoviesLoaded ? state.movieResponse : null;
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Movies',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllMoviesScreen(
                              appbarTitle: 'Popular Movies',
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'See All',
                        style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              if (state is MoviesLoading)
                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CustomShimmer(
                            baseColor: AppColors.transparentColor,
                            highlightColor: Colors.grey.shade100,
                            widget: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              height: 160,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              if (state is MoviesLoaded)
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final movieData = data?.results[index];
                      return MovieTile(
                        movies: movieData!,
                      );
                    },
                  ),
                ),
              if (state is MoviesError)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    state.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                    textAlign: TextAlign.center,
                  ),
                )
              else
                const SizedBox()
            ],
          );
        },
      )
    ]);
  }
}

class MovieTile extends StatelessWidget {
  const MovieTile({
    Key? key,
    required this.movies,
  }) : super(key: key);

  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(movies: movies),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 200,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160,
              width: 180,
              child: CachedNetworkImage(
                imageUrl: movies.posterPath.getImageUrl(),
                fit: BoxFit.fill,
                progressIndicatorBuilder: (BuildContext ctx, String image,
                    DownloadProgress progress) {
                  return Container(
                    width: 160,
                    height: 180,
                    color: AppColors.primaryColor.withOpacity(
                      progress.progress ?? 1.0,
                    ),
                  );
                },
              ),
            ),
            Text(
              movies.originalTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.start,
              maxLines: 1,
            ),
            Text(
              movies.releaseDate,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.start,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
