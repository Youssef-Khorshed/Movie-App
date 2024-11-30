import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/enums/theme_state.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  static ThemeCubit get(context) => BlocProvider.of(context);
  ThemeModeState themeModeState = ThemeModeState.light;
  void changeTheme() {
    emit(ThemeLoading());

    if (themeModeState == ThemeModeState.light) {
      themeModeState = ThemeModeState.dark;
      emit(ThemeSuccess());
    } else {
      themeModeState = ThemeModeState.light;

      emit(ThemeSuccess());
    }
  }
}
