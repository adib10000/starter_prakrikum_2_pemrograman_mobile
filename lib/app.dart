// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'supplemental/cut_corners_border.dart';

const Color _shrinePrimaryColor = Color(0xFF154c79);
const Color _shrineSecondaryColor = Color(0xFFf7a072);
const Color _shrineSurfaceColor = Color(0xFFfef6ec);
const Color _shrineBackgroundColor = Color(0xFFf9f1e7);
const Color _shrineErrorColor = Color(0xFFba1b1d);

ThemeData _buildShrineLightTheme() {
  final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: _shrinePrimaryColor,
    brightness: Brightness.light,
  ).copyWith(
    primary: _shrinePrimaryColor,
    onPrimary: Colors.white,
    secondary: _shrineSecondaryColor,
    onSecondary: Colors.black87,
    surface: _shrineSurfaceColor,
    onSurface: const Color(0xFF1f1f1f),
    error: _shrineErrorColor,
  );

  final ThemeData base = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    visualDensity: VisualDensity.standard,
  );

  final TextTheme textTheme = _buildShrineTextTheme(base.textTheme);

  return base.copyWith(
    scaffoldBackgroundColor: _shrineBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: textTheme.titleLarge?.copyWith(
        color: colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: textTheme,
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 6,
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
        shadowColor: colorScheme.primary.withValues(alpha: 0.5),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: textTheme.labelLarge,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.secondary,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: textTheme.labelLarge,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surface,
      labelStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface.withValues(alpha: 0.8),
      ),
      floatingLabelStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.primary,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      enabledBorder: CutCornersBorder(
        borderSide: BorderSide(color: colorScheme.primary.withValues(alpha: 0.3)),
        borderRadius: BorderRadius.circular(12),
        cut: 10,
      ),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
        borderRadius: BorderRadius.circular(12),
        cut: 10,
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 4,
      color: colorScheme.surface,
      shadowColor: colorScheme.primary.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(8),
    ),
    chipTheme: base.chipTheme.copyWith(
      backgroundColor: colorScheme.secondary.withValues(alpha: 0.15),
      selectedColor: colorScheme.secondary,
      labelStyle: textTheme.labelLarge?.copyWith(
        color: colorScheme.onSecondary,
      ),
    ),
    dividerColor: colorScheme.primary.withValues(alpha: 0.2),
  );
}

ThemeData _buildShrineDarkTheme() {
  final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: _shrinePrimaryColor,
    brightness: Brightness.dark,
  ).copyWith(
    primary: const Color(0xFF89c2d9),
    onPrimary: const Color(0xFF022b3a),
    secondary: const Color(0xFFffb677),
    onSecondary: Colors.black,
    surface: const Color(0xFF14243b),
    onSurface: const Color(0xFFe1f2fb),
    error: _shrineErrorColor,
  );

  final ThemeData base = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    brightness: Brightness.dark,
  );

  final TextTheme textTheme = _buildShrineTextTheme(base.textTheme);

  return base.copyWith(
    scaffoldBackgroundColor: const Color(0xFF0b1d26),
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: textTheme.titleLarge?.copyWith(
        color: colorScheme.onSurface,
      ),
    ),
    textTheme: textTheme,
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 6,
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
        shadowColor: colorScheme.primary.withValues(alpha: 0.25),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: textTheme.labelLarge,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.secondary,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: textTheme.labelLarge,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surface,
      labelStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface.withValues(alpha: 0.7),
      ),
      floatingLabelStyle: textTheme.bodyMedium?.copyWith(
        color: colorScheme.secondary,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      enabledBorder: CutCornersBorder(
        borderSide: BorderSide(color: colorScheme.onSurface.withValues(alpha: 0.3)),
        borderRadius: BorderRadius.circular(12),
        cut: 10,
      ),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(color: colorScheme.secondary, width: 2),
        borderRadius: BorderRadius.circular(12),
        cut: 10,
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 6,
      color: colorScheme.surface,
      shadowColor: Colors.black.withValues(alpha: 0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(8),
    ),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
        titleLarge: base.titleLarge?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.2,
        ),
        titleMedium: base.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        titleSmall: base.titleSmall?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: base.bodyLarge?.copyWith(
          fontWeight: FontWeight.w400,
          letterSpacing: 0.2,
        ),
        bodyMedium: base.bodyMedium?.copyWith(
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
        ),
        labelLarge: base.labelLarge?.copyWith(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.6,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: base.bodyLarge?.color,
        bodyColor: base.bodyLarge?.color,
      );
}

// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        // TODO: Change to a Backdrop with a HomePage frontLayer (104)
        '/': (BuildContext context) => const HomePage(),
        // TODO: Make currentCategory field take _currentCategory (104)
        // TODO: Pass _currentCategory for frontLayer (104)
        // TODO: Change backLayer field value to CategoryMenuPage (104)
      },
      theme: _buildShrineLightTheme(),
      darkTheme: _buildShrineDarkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
