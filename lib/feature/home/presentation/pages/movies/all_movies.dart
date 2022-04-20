import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/core/components/movie_list_tile.dart';
import 'package:swivt_challenge/core/components/movie_loading_widget.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';

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
              if (state is MoviesLoading) const MovieLoadingWidget(),
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
                        const GetPopularMovies(page: 1),
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
                Center(
                  child: Text(
                    state.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
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
