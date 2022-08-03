import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:movie/movie.dart';
import 'package:movieapp/app/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp() {
    super.registerInjections();
    super.registerRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieApp',
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/splash',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {
        '/splash': (_, __) => SplashPage(),
      };

  @override
  List<MicroApp> get microApps => [
        MicroAppMovieResolver(),
        MicroAppLoginResolver(),
      ];
}
