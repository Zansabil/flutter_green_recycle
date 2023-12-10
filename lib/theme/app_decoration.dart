import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber300,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.62),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer2 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primaryContainer.withOpacity(0.2),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimaryContainer3 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(0.05),
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );

  // Putih decorations
  static BoxDecoration get putih => BoxDecoration(
        color: appTheme.whiteA70001,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );
  static BorderRadius get customBorderTL14 => BorderRadius.vertical(
        top: Radius.circular(14.h),
      );
  static BorderRadius get customBorderTL141 => BorderRadius.only(
        topLeft: Radius.circular(14.h),
        topRight: Radius.circular(14.h),
        bottomRight: Radius.circular(14.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
