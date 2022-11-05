import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resumeapp/src/details_page.dart';
import 'package:resumeapp/src/theme/app_theme.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeMode = ref.read(themeNotifierProvider.notifier);
    final themeContext = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
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
                    appThemeMode.state == true
                        ? Icons.light_mode
                        : Icons.dark_mode_outlined,
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
                      const Hero(
                        tag: "pic",
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profile_picture.png"),
                          radius: 64,
                        ),
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
                      gapH30,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Professional Summery",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          top: 15,
                        ),
                        child: Text(
                          "Diligent software engineer with 3+ years of experience in commercial mobile application and software development. Eager to join  your comapany and build innovative and cutting-edge business solutions for the impressive suite of clients within its global reach. In previous roles, built eye-catching UI designs, slashed downtime by 30% and ensured 98% on-time project completion. Also identified and dealt with a significant process bottleneck that boosted coding efficiency by 35% when resolved.",
                          style: themeContext.textTheme.subtitle1,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      gapH15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    title: "Skills",
                                    data: [
                                      DetailsModel(
                                        jobTitle: "Flutter Developer OneKiosk",
                                        dateRange: "Jan 2020 - Aug 2020",
                                        description:
                                            "Interpreted UI design into Flutter application code.\n \nIntegrated backend APIs to the application.\n \nUsed git and GitHub to manage code source control ",
                                      ),
                                      DetailsModel(
                                        jobTitle:
                                            "Flutter Developer Centre-Chops",
                                        dateRange: "Jul 2021 - Sep 2021",
                                        description:
                                            "I worked on interpreting UI/UX design in code.\n \nI built a CI/CD pipeline using Codemagic.\n \nIntegrated Paystack payment gateway. ",
                                      ),
                                      DetailsModel(
                                        jobTitle: "Flutter Developer Safercliq",
                                        dateRange: "Jan 2022 - Aug 2022",
                                        description:
                                            "Interpreted UI design into Flutter application code.\n \nUsed Firebase for authentication, database, and cloud functions.\n \nI built a CI/CD pipeline using code magic.\n \nI Integrated google maps for real-time geolocation tracking.",
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: _button(
                              "assets/images/skils.png",
                              "Skils    ",
                              const Color(0xFFCAD922),
                            ),
                          ),
                          gapW10,
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    title: "Education",
                                    data: [
                                      DetailsModel(
                                        jobTitle:
                                            "B.sc Computer Science | Adeleke Uni",
                                        dateRange: "Sep 2017 - Aug 2021",
                                        description:
                                            "During my four years. I learned about Data structure and algorithms, systems designs, compilers and interpreters, database designs, and more.",
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: _button(
                              "assets/images/education.png",
                              "Education",
                              const Color(0xFF22ADD9),
                            ),
                          ),
                        ],
                      ),
                      gapH15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    title: "Experience",
                                    data: [
                                      DetailsModel(
                                        jobTitle: "Flutter Developer OneKiosk",
                                        dateRange: "Jan 2020 - Aug 2020",
                                        description:
                                            "Interpreted UI design into Flutter application code.\n \nIntegrated backend APIs to the application.\n \nUsed git and GitHub to manage code source control ",
                                      ),
                                      DetailsModel(
                                        jobTitle:
                                            "Flutter Developer Centre-Chops",
                                        dateRange: "Jul 2021 - Sep 2021",
                                        description:
                                            "I worked on interpreting UI/UX design in code.\n \nI built a CI/CD pipeline using Codemagic.\n \nIntegrated Paystack payment gateway. ",
                                      ),
                                      DetailsModel(
                                        jobTitle: "Flutter Developer Safercliq",
                                        dateRange: "Jan 2022 - Aug 2022",
                                        description:
                                            "Interpreted UI design into Flutter application code.\n \nUsed Firebase for authentication, database, and cloud functions.\n \nI built a CI/CD pipeline using code magic.\n \nIntegrated google maps for real-time geolocation tracking.",
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: _button(
                              "assets/images/experience.png",
                              "Experience",
                              const Color(0xFF22D997),
                            ),
                          ),
                        ],
                      ),
                      gapH15,
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

  Widget _button(String iconUrl, String text, Color color) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 8.0,
          ),
          ImageIcon(
            AssetImage(iconUrl),
            size: 27,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }
}
