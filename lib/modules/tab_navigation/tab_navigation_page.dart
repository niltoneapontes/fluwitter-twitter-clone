import 'package:flutter/material.dart';
import 'package:fluwitter/modules/timeline_bottom_sheet/timeline_bottom_sheet.dart';
import 'package:fluwitter/routes/tab_pages.dart';
import 'package:fluwitter/widgets/app_bar.dart';
import 'package:fluwitter/widgets/floating_button.dart';

class TabNavigationPage extends StatefulWidget {
  const TabNavigationPage({Key? key}) : super(key: key);

  @override
  State<TabNavigationPage> createState() => _TabNavigationPageState();
}

class _TabNavigationPageState extends State<TabNavigationPage> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

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
              enableDrag: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              isDismissible: true,
              builder: (context) {
                return const TimelineBottomSheet();
              });
        },
      ),
      body: PageView(
        controller: _pageController,
        children: pages,
        scrollBehavior: ScrollBehavior(
            androidOverscrollIndicator: AndroidOverscrollIndicator.glow),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white, width: 0.5))),
        child: BottomNavigationBar(
            backgroundColor: const Color(0xFF15202B),
            showSelectedLabels: false,
            onTap: (value) {
              setState(() {
                _pageIndex = value;
              });
              _pageController.animateToPage(value,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOutCubic);
            },
            currentIndex: _pageIndex,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            selectedIconTheme: IconThemeData(color: Colors.white, size: 24),
            unselectedIconTheme: IconThemeData(color: Colors.white, size: 24),
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF15202B),
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF15202B),
                  icon: Icon(Icons.search),
                  label: 'Search'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF15202B),
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Notifications'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF15202B),
                  icon: Icon(Icons.mail_outline),
                  label: 'Direct Messages'),
            ]),
      ),
      floatingActionButton: TwitterFloatingButton(),
    );
  }
}
