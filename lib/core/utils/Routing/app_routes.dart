import 'package:flutter/cupertino.dart';
import 'package:movie_app/features/Details/views/movie_details_view.dart';

class AppRoutes {
  static const String details = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case details:
        return CupertinoPageRoute(
          builder: (context) {
            return const MovieDetailsView();
          },
        );
      default:
        return CupertinoPageRoute(builder: (_) => Container());
    }
  }
}
