import 'package:flutter/material.dart';
import 'package:movie_app/features/setting_view/data/data_of_grid_view.dart';
import 'package:movie_app/features/setting_view/widgets/custom_setting_item.dart';

class GridViewSection extends StatelessWidget {
  const GridViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 3.3 / 2,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return CustomSettingItem(
            data: DataOfGridView.gridViewContent[index],
          );
        },
      ),
    );
  }
}
