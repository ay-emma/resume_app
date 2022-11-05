import 'package:flutter/material.dart';
import 'package:resumeapp/src/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp(
      title: 'AY ',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      //Switch between them mode based on user selection
      themeMode: themeMode == false ? ThemeMode.light : ThemeMode.dark,
      home: const Homepage(),
    );
  }
}
