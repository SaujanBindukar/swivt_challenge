import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/core/components/custom_shimmer.dart';
import 'package:swivt_challenge/core/extensions/image_extension.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/popular_movies/movie_details.dart';

class AllMoviesScreen extends StatefulWidget {
  const AllMoviesScreen({
    Key? key,
    required this.appbarTitle,
  }) : super(key: key);
  final String appbarTitle;

  @override
  State<AllMoviesScreen> createState() => _AllMoviesScreenState();
}

class _AllMoviesScreenState extends State<AllMoviesScreen> {
  final _refreshController = RefreshController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          widget.appbarTitle,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: BlocBuilder<MoviesBloc, MoviesState>(
        bloc: inject<MoviesBloc>(),
        builder: (context, state) {
          final data = state is MoviesLoaded ? state.movieResponse : null;
          return Column(
            children: [
              if (state is MoviesLoading)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView.builder(
                        itemCount: 10,
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
                  ),
                ),
              if (state is MoviesLoaded)
                Expanded(
                  child: SmartRefresher(
                    enablePullUp: true,
                    controller: _refreshController,
                    // ignore: prefer_const_constructors
                    footer: ClassicFooter(
                      loadingIcon: const CupertinoActivityIndicator(),
                      loadingText: 'Loading',
                      idleText: 'Loading',
                      idleIcon: const CupertinoActivityIndicator(),
                    ),
                    onLoading: () {
                      inject<MoviesBloc>().add(
                        GetPopularMovies(
                          page: state.movieResponse.page + 1,
                          oldMovieResponse: state.movieResponse,
                        ),
                      );
                      Future.delayed(const Duration(seconds: 2),
                          _refreshController.loadComplete);
                    },
                    onRefresh: () {
                      inject<MoviesBloc>().add(
                        const GetPopularMovies(),
                      );
                      Future.delayed(const Duration(seconds: 2),
                          _refreshController.refreshCompleted);
                    },
                    child: ListView.builder(
                      controller: ScrollController(),
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: data?.results.length,
                      itemBuilder: (context, index) {
                        final movieData = data!.results[index];
                        return MovieListTile(movieData: movieData);
                      },
                    ),
                  ),
                ),
              if (state is MoviesError)
                Text(
                  'Unable to fetch',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                )
              else
                const SizedBox()
            ],
          );
        },
      ),
    );
  }
}

class MovieListTile extends StatelessWidget {
  const MovieListTile({
    Key? key,
    required this.movieData,
  }) : super(key: key);

  final Movies movieData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(
              movies: movieData,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            color: AppColors.transparentColor,
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.transparentColor,
              radius: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: 80,
                  width: double.infinity,
                  imageUrl: movieData.posterPath.getImageUrl(),
                  progressIndicatorBuilder: (BuildContext ctx, String image,
                      DownloadProgress progress) {
                    return Container(
                      color: AppColors.primaryColor
                          .withOpacity(progress.progress ?? 1.0),
                    );
                  },
                  errorWidget: (context, _, error) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieData.originalTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white),
                    maxLines: 2,
                  ),
                  Text(
                    'Released on : ${movieData.releaseDate}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white),
                    maxLines: 1,
                  ),
                  Text(
                    movieData.overview,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
