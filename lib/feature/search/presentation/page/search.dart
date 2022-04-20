import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/core/components/custom_shimmer.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/movies/all_movies.dart';
import 'package:swivt_challenge/feature/search/application/search_movie_bloc/search_movie_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Text(
                'Find your favourite movie..',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                onChanged: (value) {
                  inject<SearchMovieBloc>().add(SearchMovieByName(name: value));
                },
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter a title..',
                  hintStyle: const TextStyle(color: Colors.white),
                  fillColor: AppColors.transparentColor,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                        style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0,
                        style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            BlocBuilder<SearchMovieBloc, SearchMovieState>(
              bloc: inject<SearchMovieBloc>(),
              builder: (context, state) {
                if (state is SearchMovieInitial) {}
                if (state is SearchMovieLoading) {
                  return Expanded(
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
                  );
                }
                if (state is SearchMovieLoaded) {
                  final searchData = state.movieResponse;
                  return searchData.results.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            controller: ScrollController(),
                            shrinkWrap: true,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: searchData.results.length,
                            itemBuilder: (context, index) {
                              final movieData = searchData.results[index];
                              return MovieListTile(movieData: movieData);
                            },
                          ),
                        )
                      : Center(
                          child: Text(
                          'No Movies found.',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(color: Colors.white),
                        ));
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
