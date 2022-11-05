import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resumeapp/src/theme/app_theme.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeMode = ref.read(themeNotifierProvider.notifier);
    final themeContext = Theme.of(context);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          pinned: true,
          expandedHeight: 71,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: Text(
            "Resume",
            style: themeContext.textTheme.headline3,
          ),
          flexibleSpace: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                color: themeContext.primaryColor.withOpacity(0.1),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.translate,
                color: Theme.of(context).primaryColor,
                size: 32,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {
                  appThemeMode.toggleThemeMode();
                },
                icon: Icon(
                  Icons.light_mode,
                  color: Theme.of(context).primaryColor,
                  size: 32,
                ),
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    gapH30,
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/profile_picture.png"),
                      radius: 64,
                    ),
                    gapH30,
                    Text(
                      "Adedokun Emmanuel",
                      style: themeContext.textTheme.headline4,
                    ),
                    gapH15,
                    Text(
                      "Flutter Developer",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    gapH30,
                    //Social handles
                    _socialHandleTile(
                      Icons.email_outlined,
                      "adedokunemmanuel250@gmail.com",
                      themeContext.textTheme.headline6!,
                    ),
                    gapH15,
                    _socialHandleTile(
                      Icons.phone_outlined,
                      "+234 8080 503 213",
                      themeContext.textTheme.headline6!,
                    ),
                    gapH15,
                    _socialHandleTile(
                      Icons.email_outlined,
                      "@whois_Ay",
                      themeContext.textTheme.headline6!,
                    ),
                    gapH15,
                    _socialHandleTile(
                      Icons.email_outlined,
                      "https://github.com/ay-emma/",
                      themeContext.textTheme.headline6!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _socialHandleTile(IconData icon, String handle, TextStyle style) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF97A4B7).withOpacity(0.18)),
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            icon,
            color: iconColor,
            size: 24,
          ),
        ),
        gapW15,
        Text(
          handle,
          style: style,
        )
      ],
    );
  }
}
