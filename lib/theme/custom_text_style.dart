import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.62),
      );
  static get bodyLargeWhiteA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.8),
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallGray40001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.62),
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displaySmallOnPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Label text style
  static get labelLargeBluegray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray100.withOpacity(0.9),
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.8),
      );
  static get labelLargeErrorContainer_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.25),
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.2),
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelLargeWhiteA70001Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w700,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelLarge_2 => theme.textTheme.labelLarge!;
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.4),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumWhiteA70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelMedium_1 => theme.textTheme.labelMedium!;
  // Title text style
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.8),
      );
  static get titleLargeErrorContainer_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.8),
      );
  static get titleLargeErrorContainer_2 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.8),
      );
  static get titleLargePontanoSansErrorContainer =>
      theme.textTheme.titleLarge!.pontanoSans.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.62),
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRedA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.8),
      );
  static get titleSmallGray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray300,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.96),
      );
  static get titleSmallPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.62),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get pontanoSans {
    return copyWith(
      fontFamily: 'Pontano Sans',
    );
  }
}
