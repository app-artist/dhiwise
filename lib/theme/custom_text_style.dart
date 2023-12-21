import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get leagueSpartan {
    return copyWith(
      fontFamily: 'League Spartan',
    );
  }
}
