import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/class/item_class.dart';
import 'package:hello_world/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World!'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
                title: 'Rocket',
                imagePath: "images/rocket.png",
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Space',
                      imagePath: "images/space.png",
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: 'Travel',
                      imagePath: "images/travel.png",
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: 'Yeah',
                imagePath: "images/yeah.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
