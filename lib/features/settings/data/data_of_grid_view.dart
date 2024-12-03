import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/features/settings/data/grid_view_model.dart';

class DataOfGridView {
  static List<SettingGridViewModel> gridViewContent = [
    SettingGridViewModel(svgIcon: AppIcons.edit, text: 'Edit Profile'),
    SettingGridViewModel(svgIcon: AppIcons.setting, text: 'Setting'),
    SettingGridViewModel(svgIcon: AppIcons.lang, text: 'Change Language'),
    SettingGridViewModel(svgIcon: AppIcons.support, text: 'Support'),
    SettingGridViewModel(svgIcon: AppIcons.aboutUs, text: 'About us'),
    SettingGridViewModel(svgIcon: AppIcons.remoteConnection, text: 'Devices'),
  ];
}
