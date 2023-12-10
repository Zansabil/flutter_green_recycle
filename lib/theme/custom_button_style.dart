import 'dart:ui';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillOrange => ElevatedButton.styleFrom(
        backgroundColor: appTheme.orange400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL11 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL14 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineErrorContainer => OutlinedButton.styleFrom(
        backgroundColor: appTheme.greenA400,
        side: BorderSide(
          color: theme.colorScheme.errorContainer.withOpacity(1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get outlineErrorContainerTL14 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
        shadowColor: theme.colorScheme.errorContainer.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineErrorContainerTL18 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.greenA400,
        side: BorderSide(
          color: theme.colorScheme.errorContainer.withOpacity(1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  static ButtonStyle get outlineErrorContainerTL181 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
        shadowColor: theme.colorScheme.errorContainer.withOpacity(0.15),
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
