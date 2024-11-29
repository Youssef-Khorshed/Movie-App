import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String splash = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return CupertinoPageRoute(
          builder: (context) {
            return Container();
          },
        );
      default:
        return CupertinoPageRoute(builder: (_) => Container());
    }
  }
}
