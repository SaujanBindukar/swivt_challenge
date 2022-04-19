import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/core/components/custom_shimmer.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/applications/genre_bloc/genre_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/genre/genre_movies.dart';

class GenreList extends StatefulWidget {
  const GenreList({Key? key}) : super(key: key);

  @override
  State<GenreList> createState() => _GenreListState();
}

class _GenreListState extends State<GenreList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenreBloc, GenreState>(
      bloc: inject<GenreBloc>(),
      builder: (context, state) {
        if (state is GenreLoading) {
          return const _GenreLoadingState();
        }
        if (state is GenreLoaded) {
          final data = state.genreResponse;
          return SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.genres?.length,
                itemBuilder: (context, index) {
                  final genreData = data.genres?[index];
                  return _GenreChips(genreData: genreData);
                },
              ),
            ),
          );
        }
        if (state is GenreError) {
          return Text(
            'Unable to fetch',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

class _GenreLoadingState extends StatelessWidget {
  const _GenreLoadingState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
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
                  height: 20,
                  width: 100,
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
}

class _GenreChips extends StatelessWidget {
  const _GenreChips({
    Key? key,
    required this.genreData,
  }) : super(key: key);

  final Genres? genreData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GenreMoviesScreen(
              genreId: genreData!.id,
              genreName: genreData!.name,
            ),
          ),
        );
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.transparentColor,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              genreData?.name ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
          )),
    );
  }
}
