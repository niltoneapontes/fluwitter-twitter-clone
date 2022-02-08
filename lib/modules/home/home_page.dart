import 'package:flutter/material.dart';
import 'package:fluwitter/widgets/app_bar.dart';
import 'package:fluwitter/widgets/floating_button.dart';
import 'package:fluwitter/widgets/tweet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15202B),
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
      floatingActionButton: TwitterFloatingButton(),
    );
  }
}
