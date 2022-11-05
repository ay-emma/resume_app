import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// extension ThemeShortcust on BuildContext {
//   BuildContext appTheme() {
//     return Theme.of(this).
//   }
// }

///theme Provider
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, bool>((ref) {
  return ThemeNotifier();
});

/// notifer if its dark mode
/// defaults to false, means lightmode
class ThemeNotifier extends StateNotifier<bool> {
  ThemeNotifier() : super(false);

  ///switch theme mode
  toggleThemeMode() {
    state = !state;
  }
}

/// whiteSpace
const gapH30 = SizedBox(
  height: 30,
);
const gapH15 = SizedBox(
  height: 15,
);
const gapW15 = SizedBox(
  width: 15,
);
const gapH10 = SizedBox(
  height: 10,
);
const gapW10 = SizedBox(
  width: 10,
);

const iconColor = Color(0xFF97A4B7);

const primaryColorLight = Color(0XFF354680);
const primaryColorDark = Color(0XFF97A4B7);

///Theme class for light and dark mode
class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0XFFF4F6FA),
    primaryColor: primaryColorLight,
    textTheme: const TextTheme(
      headline3: TextStyle(
        color: primaryColorLight,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        color: primaryColorLight,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      headline5: TextStyle(
        color: primaryColorLight,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      headline6: TextStyle(
        color: primaryColorLight,
        fontSize: 15,
        fontWeight: FontWeight.w800,
      ),
      subtitle1: TextStyle(
        color: primaryColorLight,
        fontSize: 15,
        fontWeight: FontWeight.normal,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0XFF000000),
    primaryColor: primaryColorDark,
    textTheme: const TextTheme(
      headline3: TextStyle(
        color: primaryColorDark,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        color: primaryColorDark,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      headline5: TextStyle(
        color: primaryColorDark,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      headline6: TextStyle(
        color: primaryColorDark,
        fontSize: 15,
        fontWeight: FontWeight.w800,
      ),
      subtitle1: TextStyle(
        color: primaryColorDark,
        fontSize: 15,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
