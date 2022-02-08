import 'package:flutter/material.dart';
import 'package:fluwitter/widgets/app_bar.dart';
import 'package:fluwitter/widgets/floating_button.dart';
import 'package:fluwitter/widgets/tweet.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15202B),
      body: Center(
        child: Text('Search'),
      ),
    );
  }
}
