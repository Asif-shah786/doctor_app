import 'package:doctorapp/config/app_route.dart';
import 'package:doctorapp/controller/bottombar_controller.dart';
import 'package:doctorapp/presentation/search/search_controller.dart';
import 'package:doctorapp/widget/app_sizebox_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarController()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp.router(
theme: ThemeData(fontFamily: "Inter"),
      debugShowCheckedModeBanner: false,
      title: 'Doctor app',
      routerConfig: appRouter,
    );
  }
}
