import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluwitter/widgets/new_tweet.dart';

class TwitterFloatingButton extends SpeedDial {
  final BuildContext context;

  TwitterFloatingButton({Key? key, required this.context})
      : super(
          key: key,
          icon: Icons.add,
          activeIcon: Icons.close,
          useRotationAnimation: true,
          animationSpeed: 250,
          children: [
            SpeedDialChild(
              onTap: (() {
                showDialog(
                    useRootNavigator: true,
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return const NewTweet();
                    });
              }),
              backgroundColor: const Color(0xFF15202B),
              labelWidget: const Text(
                'Tweet',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              child: const Icon(Icons.edit, color: Colors.white),
            ),
            SpeedDialChild(
              backgroundColor: const Color(0xFF15202B),
              labelWidget: const Text(
                'GIF',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              child: const Icon(Icons.gif_outlined, color: Colors.white),
            ),
            SpeedDialChild(
              backgroundColor: const Color(0xFF15202B),
              labelWidget: const Text(
                'Fotos',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              child: const Icon(Icons.photo_outlined, color: Colors.white),
            ),
            SpeedDialChild(
              backgroundColor: const Color(0xFF15202B),
              labelWidget: const Text(
                'Espaços',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              child: const Icon(Icons.blur_on, color: Colors.white),
            ),
          ],
          overlayColor: Colors.black87,
          overlayOpacity: 0.9,
        );
}
