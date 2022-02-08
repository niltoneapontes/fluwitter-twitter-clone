import 'package:flutter/material.dart';
import 'package:fluwitter/widgets/app_bar.dart';
import 'package:fluwitter/widgets/floating_button.dart';
import 'package:fluwitter/widgets/tweet.dart';

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
      home: const MyHomePage(title: 'Fluwitter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15202B),
      appBar: TwitterAppBar(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              backgroundColor: const Color(0xFF15202B),
              elevation: 8,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              isDismissible: true,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                );
              });
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white, width: 0.5))),
        child: BottomNavigationBar(
            selectedIconTheme: IconThemeData(
              size: 24,
            ),
            backgroundColor: const Color(0xFF15202B),
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: const Color(0xFF15202B),
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: const Color(0xFF15202B),
                  icon: Icon(Icons.search),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: const Color(0xFF15202B),
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: const Color(0xFF15202B),
                  icon: Icon(Icons.mail_outline),
                  label: 'Home'),
            ]),
      ),
      floatingActionButton: TwitterFloatingButton(),
    );
  }
}
