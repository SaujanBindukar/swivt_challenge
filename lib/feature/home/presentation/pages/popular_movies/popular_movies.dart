import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';

class PopularMoviesList extends StatefulWidget {
  const PopularMoviesList({Key? key}) : super(key: key);

  @override
  State<PopularMoviesList> createState() => _PopularMoviesListState();
}

class _PopularMoviesListState extends State<PopularMoviesList> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          'Popular Movies',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      BlocProvider(
        create: (context) => MoviesBloc()..add(GetPopularMovies()),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            if (state is MoviesLoading) {
              return CircularProgressIndicator();
            }
            if (state is MoviesLoaded) {
              final data = state.movieResponse;
              return SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final genreData = data.results[index];
                      return MovieTile(genreData: genreData);
                    },
                  ),
                ),
              );
            }
            if (state is MoviesError) {
              return Text(
                'Unable to fetch',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
              );
            }
            return const SizedBox();
          },
        ),
      )
    ]);
  }
}

class MovieTile extends StatelessWidget {
  const MovieTile({
    Key? key,
    required this.genreData,
  }) : super(key: key);

  final Movies genreData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 200,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: CachedNetworkImageProvider(
                      'https://image.tmdb.org/t/p/original' +
                          genreData.posterPath,
                    ))),
          ),
          Text(
            genreData.originalTitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
            textAlign: TextAlign.start,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
