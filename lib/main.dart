import 'package:flutter/material.dart';
import 'package:graduation_proj/config/theme/theme_manager.dart';
import 'package:graduation_proj/core/utils/routes_manager/routes_manager.dart';
import 'package:graduation_proj/core/utils/routes_manager/routes_name.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

void main() {
  runApp(const RouteMovies());
}

class RouteMovies extends StatelessWidget {
  const RouteMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      navigatorKey: navigatorKey,
      initialRoute: RoutesName.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
    );
  }
}
