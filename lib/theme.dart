import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8e4d2f),
      surfaceTint: Color(0xff8e4d2f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbcd),
      onPrimaryContainer: Color(0xff360f00),
      secondary: Color(0xff77574a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcd),
      onSecondaryContainer: Color(0xff2c160c),
      tertiary: Color(0xff8d4d2d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdbcc),
      onTertiaryContainer: Color(0xff351000),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff53443d),
      outline: Color(0xff85736c),
      outlineVariant: Color(0xffd8c2ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffffb596),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff360f00),
      primaryFixedDim: Color(0xffffb596),
      onPrimaryFixedVariant: Color(0xff71361a),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff2c160c),
      secondaryFixedDim: Color(0xffe6bead),
      onSecondaryFixedVariant: Color(0xff5d4034),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff351000),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff703718),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6c3216),
      surfaceTint: Color(0xff8e4d2f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa86242),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff583c30),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8f6d5f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6b3314),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa86340),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff4e403a),
      outline: Color(0xff6c5c55),
      outlineVariant: Color(0xff897770),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffffb596),
      primaryFixed: Color(0xffa86242),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8b4b2d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8f6d5f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745548),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa86340),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff8a4b2b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff411400),
      surfaceTint: Color(0xff8e4d2f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6c3216),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff331c12),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff583c30),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3f1500),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6b3314),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2e211c),
      outline: Color(0xff4e403a),
      outlineVariant: Color(0xff4e403a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffffe7de),
      primaryFixed: Color(0xff6c3216),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff501d03),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff583c30),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f271c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6b3314),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4f1e02),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb596),
      surfaceTint: Color(0xffffb596),
      onPrimary: Color(0xff542106),
      primaryContainer: Color(0xff71361a),
      onPrimaryContainer: Color(0xffffdbcd),
      secondary: Color(0xffe6bead),
      onSecondary: Color(0xff442a1f),
      secondaryContainer: Color(0xff5d4034),
      onSecondaryContainer: Color(0xffffdbcd),
      tertiary: Color(0xffffb693),
      onTertiary: Color(0xff542104),
      tertiaryContainer: Color(0xff703718),
      onTertiaryContainer: Color(0xffffdbcc),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffd8c2ba),
      outline: Color(0xffa08d85),
      outlineVariant: Color(0xff53443d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff8e4d2f),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff360f00),
      primaryFixedDim: Color(0xffffb596),
      onPrimaryFixedVariant: Color(0xff71361a),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff2c160c),
      secondaryFixedDim: Color(0xffe6bead),
      onSecondaryFixedVariant: Color(0xff5d4034),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff351000),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff703718),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbb9f),
      surfaceTint: Color(0xffffb596),
      onPrimary: Color(0xff2d0c00),
      primaryContainer: Color(0xffca7e5c),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc2b1),
      onSecondary: Color(0xff261107),
      secondaryContainer: Color(0xffad897a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffbc9c),
      onTertiary: Color(0xff2c0c00),
      tertiaryContainer: Color(0xffc97e5a),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xfff9faff),
      onSurfaceVariant: Color(0xffdcc6be),
      outline: Color(0xffb39f97),
      outlineVariant: Color(0xff927f78),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff72371b),
      primaryFixed: Color(0xffffdbcd),
      onPrimaryFixed: Color(0xff250800),
      primaryFixedDim: Color(0xffffb596),
      onPrimaryFixedVariant: Color(0xff5c260b),
      secondaryFixed: Color(0xffffdbcd),
      onSecondaryFixed: Color(0xff1f0c04),
      secondaryFixedDim: Color(0xffe6bead),
      onSecondaryFixedVariant: Color(0xff4a3024),
      tertiaryFixed: Color(0xffffdbcc),
      onTertiaryFixed: Color(0xff240900),
      tertiaryFixedDim: Color(0xffffb693),
      onTertiaryFixedVariant: Color(0xff5b2709),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb596),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbb9f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc2b1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffbc9c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffdcc6be),
      outlineVariant: Color(0xffdcc6be),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff4c1b02),
      primaryFixed: Color(0xffffe1d5),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbb9f),
      onPrimaryFixedVariant: Color(0xff2d0c00),
      secondaryFixed: Color(0xffffe1d5),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc2b1),
      onSecondaryFixedVariant: Color(0xff261107),
      tertiaryFixed: Color(0xffffe1d4),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffbc9c),
      onTertiaryFixedVariant: Color(0xff2c0c00),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
