import 'package:flutter/material.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';
import 'package:swivt_challenge/feature/downloads/download.dart';
import 'package:swivt_challenge/feature/home/presentation/home.dart';
import 'package:swivt_challenge/feature/search/search.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final pageList = const [
    HomeScreen(),
    SearchScreen(),
    DownloadScreen(),
    SearchScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: Colors.white,
        onTap: ((value) {
          setState(() {
            currentIndex = value;
          });
        }),
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.download),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: pageList[currentIndex],
    );
  }
}
