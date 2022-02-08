import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwitterAppBar extends AppBar {
  TwitterAppBar(
      {Key? key,
      required void Function() onPressed,
      required GlobalKey<ScaffoldState> globalKey})
      : super(
            key: key,
            leading: IconButton(
                onPressed: () => globalKey.currentState?.openDrawer(),
                icon: const Icon(Icons.person)),
            title: SvgPicture.asset(
              'assets/icons/twitter.svg',
              width: 32,
            ),
            elevation: 0,
            shape: const Border(
              bottom: BorderSide(
                color: Color.fromRGBO(56, 68, 77, 1),
              ),
            ),
            backgroundColor: const Color(0xFF15202B),
            shadowColor: const Color.fromRGBO(136, 153, 166, 0.2),
            centerTitle: true,
            actions: [
              ElevatedButton(
                onPressed: onPressed,
                child: SvgPicture.asset('assets/icons/sparkle.svg'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF15202B),
                  shape: const CircleBorder(),
                  elevation: 0,
                ),
              ),
            ]);
}
