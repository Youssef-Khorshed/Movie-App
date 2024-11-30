import 'package:flutter/cupertino.dart';
import 'package:movie_app/features/Search/screens/filter.dart';
import 'package:movie_app/features/Search/screens/search.dart';
import 'package:movie_app/features/Preferences/screens/preferences.dart';

class AppRoutes {
  static const String splash = '/';
  static const String search = '/search';
  static const String filter = '/filter';
  static const String preferences = '/preferences';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return CupertinoPageRoute(
          builder: (context) {
            return Container();
          },
        );

      case search:
        return CupertinoPageRoute(
          builder: (context) {
            return const SearchScreen();
          },
        );
      case filter:
        return CupertinoPageRoute(
          builder: (context) {
            return const FilterScreen();
          },
        );

      case preferences:
        return CupertinoPageRoute(
          builder: (context) {
            return const PreferencesScreen();
          },
        );

      default:
        return CupertinoPageRoute(builder: (_) => Container());
    }
  }
}
