import 'package:flutter/material.dart';
import 'package:graduation_proj/core/utils/routes_manager/routes_name.dart';
import 'package:graduation_proj/screens/browse_screen/browse_screen_view.dart';
import 'package:graduation_proj/screens/details_screen/details_screen_view.dart';
import 'package:graduation_proj/screens/home_screen/views/home_screen_view.dart';
import 'package:graduation_proj/screens/splash_screen/splash_screen.dart';

class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case RoutesName.homeLayoutView:
        return MaterialPageRoute(
          builder: (context) => const HomeScreenView(),
          settings: settings,
        );
      case RoutesName.detailsView:
        return MaterialPageRoute(
          builder: (context) => const DetailsScreenView(),
          settings: settings,
        );
      case RoutesName.browseMoviesView:
        return MaterialPageRoute(
          builder: (context) => const BrowseScreenView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
    }
  }
}
