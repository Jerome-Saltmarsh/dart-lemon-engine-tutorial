import 'package:flutter/material.dart';
import 'package:lemon_engine/game.dart';
import 'package:lemon_engine/render/draw_circle.dart';

void main() {
  double x = 50;
  double y = 100;

  runApp(Game(
      title: "Lemon Engine Tutorial",
      init: () {},
      update: () {
        x++;
      },
      buildUI: (BuildContext context) {
        return GestureDetector(
          onTap: (){
            x = 50;
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              "Reset",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
        );
      },
      drawCanvas: (Canvas canvas, Size size) {
        drawCircle(x, y, 50, Colors.yellow);
      }));
}
