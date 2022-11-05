import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme/app_theme.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key, required this.title, required this.data});

  final String title;
  final List<DetailsModel> data;

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
              title,
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
              const Hero(
                tag: "pic",
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/profile_picture.png"),
                  radius: 18,
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
                for (var i in data)
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gapH15,
                        Text(
                          i.jobTitle,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        gapH10,
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            i.dateRange,
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: primaryColorDark,
                                    ),
                          ),
                        ),
                        gapH10,
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Text(
                            i.description,
                            style: themeContext.textTheme.subtitle1,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsModel {
  DetailsModel(
      {required this.jobTitle,
      required this.description,
      required this.dateRange});
  final String jobTitle;
  final String dateRange;
  final String description;
}
