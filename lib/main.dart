import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt_challenge/app_setup/bloc_observer.dart';
import 'package:swivt_challenge/app_setup/dependency_injection.dart';
import 'package:swivt_challenge/app_setup/hive/hive_setup.dart';
import 'package:swivt_challenge/feature/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initApp();

  BlocOverrides.runZoned(
    () {
      runApp(
        const MyApp(),
      );
    },
    blocObserver: SwivtBlocObserver(),
  );
}

Future<void> initApp() async {
  initDependencyInjection();
  await HiveSetup.initHive();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SWIVT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}
