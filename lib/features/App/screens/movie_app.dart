import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/Routing/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

import '../../../core/utils/enums/theme_state.dart';
import '../../settings/localization/cubit/local_cubit.dart';

class MovieApp extends StatelessWidget {
  MovieApp({super.key});

  late Locale currentLocale = const Locale('en'); // Fallback

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, theme) {
        ThemeCubit themeCubit = ThemeCubit.get(context);
        return BlocBuilder<LocalCubit, LocalState>(
          builder: (context, themeMode) {
            return MaterialApp(
              theme: ThemeData.light(), // Light theme
              darkTheme: ThemeData.dark(), // Dark theme
              themeMode: themeCubit.themeModeState == ThemeModeState.light
                  ? ThemeMode.light
                  : ThemeMode.dark,
              debugShowCheckedModeBanner: false,
              initialRoute: AppRoutes.changePasswordScreen,
              onGenerateRoute: AppRoutes.generateRoute,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: LocalCubit.get(context).localization,
              builder: DevicePreview.appBuilder,
              home: Builder(
                builder: (context) {
                  return const Placeholder();
                },
              ),
            );
          },
        );
      },
    );
  }
}
