import 'package:flutter/material.dart';
import 'package:fluwitter/modules/home/home_page.dart';
import 'package:fluwitter/modules/search/search_page.dart';
import 'package:fluwitter/modules/tab_navigation/tab_navigation_page.dart';
import 'package:fluwitter/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluwitter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        shadowColor: const Color.fromRGBO(136, 153, 166, 0.2),
      ),
      initialRoute: AppRoutes.HOME_PAGE,
      routes: {
        AppRoutes.HOME_PAGE: (context) => const TabNavigationPage(),
        AppRoutes.SEARCH: (context) => const SearchPage(),
      },
    );
  }
}
