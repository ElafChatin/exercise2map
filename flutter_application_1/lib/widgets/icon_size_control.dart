import 'package:flutter/material.dart';

class IconSizeControl extends StatelessWidget {
  final ValueChanged<double> onSizeChange;

  IconSizeControl({required this.onSizeChange});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () => onSizeChange(50), // Decrease size
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => onSizeChange(300), // Increase size
        ),
      ],
    );
  }
}