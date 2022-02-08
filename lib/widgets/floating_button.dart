import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class TwitterFloatingButton extends SpeedDial {
  TwitterFloatingButton({Key? key})
      : super(
            key: key,
            icon: Icons.add,
            activeIcon: Icons.close,
            useRotationAnimation: true,
            animationSpeed: 250,
            children: [
              SpeedDialChild(
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
            overlayColor: Colors.grey[600],
            overlayOpacity: 0.9);
}
