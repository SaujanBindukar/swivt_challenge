import 'package:flutter/material.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          widget.appbarTitle,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
