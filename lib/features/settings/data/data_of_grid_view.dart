import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/features/settings/data/grid_view_model.dart';

class DataOfGridView {
  static List<SettingGridViewModel> gridViewContent = [
    SettingGridViewModel(svgIcon: AppIcons.imagesPencil1, text: 'Edit Profile'),
    SettingGridViewModel(svgIcon: AppIcons.imagesVector, text: 'Setting'),
    SettingGridViewModel(svgIcon: AppIcons.imagesUnion, text: 'Change Language'),
    SettingGridViewModel(svgIcon: AppIcons.imagesCustomerSupport, text: 'Support'),
    SettingGridViewModel(svgIcon: AppIcons.imagesCopywriting, text: 'About us'),
    SettingGridViewModel(svgIcon: AppIcons.imagesRemoteConnection, text: 'Devices'),
  ];
}
