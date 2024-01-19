import 'package:doctorapp/presentation/AdditionalOptions/contact_us.dart';
import 'package:doctorapp/presentation/bottom_bar.dart';
import 'package:doctorapp/presentation/home/home_screen.dart';
import 'package:doctorapp/presentation/intro/intro_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../presentation/AdditionalOptions/about_us.dart';
import '../presentation/Additionaloptions/addtional_option_list_screen.dart';
import '../presentation/AnatomyPictures/anatomy_list_screen.dart';
import '../presentation/AnatomyPictures/details_screen.dart';
import '../presentation/Proceduredescription/chapter_list_screen.dart';
import '../presentation/Proceduredescription/details_screen.dart';
import '../presentation/Proceduredescription/sub_chapter_list_screen.dart';
import '../presentation/search/search_screen.dart';

/// The route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return IntroScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: BottomBar.routeName,
          // name: BottomBar.routeName,
          builder: (BuildContext context, GoRouterState state) {
            return const BottomBar();
          },
        ),
        GoRoute(
          path: 'HomeScreen',
          // name: 'HomeScreen',
          builder: (BuildContext context, GoRouterState state) {
            return  HomeScreen();
          },
        ),
        GoRoute(
          path: SubChapterListScreen.rootName,
          name: SubChapterListScreen.rootName,
          builder: (BuildContext context, state) {
              Map<String,dynamic> arg = state.extra as Map<String,dynamic>;
            return  SubChapterListScreen(subList: arg['subList'],subName: arg['subName'],);
          },
        ),
        GoRoute(
          path: AdditionalOptionListScreen.rootName,
          // name: 'HomeScreen',
          builder: (BuildContext context, GoRouterState state) {
            return const AdditionalOptionListScreen();
          },
        ),GoRoute(
          path: AnatomyListScreen.rootName,
          // name: 'HomeScreen',
          builder: (BuildContext context, GoRouterState state) {
            return const AnatomyListScreen();
          },
        ),GoRoute(
          path: ChapterListScreen.rootName,
          // name: 'HomeScreen',
          builder: (BuildContext context, GoRouterState state) {
            return const ChapterListScreen();
          },
        ),GoRoute(
          path: DetailsScreen.rootName,
          builder: (BuildContext context, GoRouterState state) {
            Map<String,dynamic> arg = state.extra as Map<String,dynamic>;

            return  DetailsScreen(appBarTitle: arg['appBarTitle'], data: arg['data'],);
          },
        ),GoRoute(
          path: ContactUs.rootName,
          builder: (BuildContext context, GoRouterState state) {
            return  const ContactUs();
          },
        ),GoRoute(
          path: AboutUs.rootName,
          builder: (BuildContext context, GoRouterState state) {
            return  const AboutUs();
          },
        ),GoRoute(
          path: AnatomyDetailsScreen.rootName,
          builder: (BuildContext context, GoRouterState state) {
            Map<String,dynamic> arg = state.extra as Map<String,dynamic>;

            return  AnatomyDetailsScreen(data: arg['data'],);
          },
        ),GoRoute(
          path: SearchScreen.rootName,
          builder: (BuildContext context, GoRouterState state) {
            Map<String,dynamic> arg = state.extra as Map<String,dynamic>;

            return  SearchScreen(isBack: arg['isBack'],);
          },
        ),
      ],

    ),
  ],
);