import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final ValueChanged<Color> onColorChange;

  CustomSlider({required this.onColorChange});

  @override
  Widget build(BuildContext context) {
    double red = 0, green = 0, blue = 0;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Slider(
                value: red,
                max: 255,
                onChanged: (value) {
                  red = value;
                  onColorChange(Color.fromRGBO(
                      red.toInt(), green.toInt(), blue.toInt(), 1));
                },
              ),
            ),
            FloatingActionButton(
              onPressed: () => onColorChange(Colors.red),
              child: Icon(Icons.color_lens),
            ),
          ],
        ),
      ],
    );
  }
}
