import 'package:flutter/material.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/genre/genre_list.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/movies/popular_movies.dart';
import 'package:swivt_challenge/feature/home/presentation/pages/movies/trending_movies.dart';
import 'package:swivt_challenge/feature/home/presentation/widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              //? user info including name [Static Data]
              Header(),
              //list of genre
              Divider(color: Colors.white),
              GenreList(),
              //list of trending movies in carousel slider
              TrendingMoviesList(),
              //list of popular movies in horizontal slider
              PopularMoviesList(),
            ],
          ),
        ),
      ),
    );
  }
}
