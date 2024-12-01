import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Builds the text displaying the selected rating range.
AutoSizeText buildRangeText(AppLocalizations localizedStrings,
    double currentValueMin, double currentValueMax) {
  return AutoSizeText(
    '${localizedStrings.from} ${currentValueMin.toStringAsFixed(1)} ${localizedStrings.to} ${currentValueMax.toStringAsFixed(1)}',
    style: AppTextStyle.style12DarkGray2W600,
  );
}

/// Builds the background of the range slider with dashed lines.
Row buildSliderBackground() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(
      8, // Number of dashes
      (index) => Container(
        width: 25,
        height: 2,
        color: AppColors.gray5,
      ),
    ),
  );
}

/// Builds the actual RangeSlider widget.
RangeSlider buildRangeSlider(double currentValueMin, double currentValueMax,
    Function(RangeValues) onChanged) {
  return RangeSlider(
    activeColor: AppColors.white,
    inactiveColor: Colors.transparent,
    values: RangeValues(currentValueMin, currentValueMax),
    min: 7,
    max: 10,
    divisions: 10,
    onChanged: onChanged,
  );
}
