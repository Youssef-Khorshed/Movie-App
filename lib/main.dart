import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/App/screens/movie_app.dart';

import 'features/settings/localization/cubit/local_cubit.dart';
import 'features/settings/theme/cubit/theme_cubit.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) =>
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => LocalCubit(),
          ),
  BlocProvider(
  create: (context) => ThemeCubit(),
  )],
        child: MovieApp(),
      ),));
}
