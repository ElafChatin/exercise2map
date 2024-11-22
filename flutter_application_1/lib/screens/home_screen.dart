import 'package:flutter/material.dart';
import '../widgets/icon_size_control.dart';
import '../widgets/custom_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double iconSize = 100; // Default size
  Color iconColor = Colors.blue; // Default color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Customizer')),
      drawer: Drawer(
        child: ListView(
          children: [
            CheckboxListTile(
              title: Text('Allow Resize'),
              value: true,
              onChanged: (value) {
                // Implement functionality
              },
            ),
            CheckboxListTile(
              title: Text('Allow Change Primer Color'),
              value: true,
              onChanged: (value) {
                // Implement functionality
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star, size: iconSize, color: iconColor),
          IconSizeControl(
            onSizeChange: (newSize) {
              setState(() {
                iconSize = newSize;
              });
            },
          ),
          CustomSlider(
            onColorChange: (newColor) {
              setState(() {
                iconColor = newColor;
              });
            },
          ),
        ],
      ),
    );
  }
}