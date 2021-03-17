import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  bool mini;
  var icon;
  var color;
  double iconSize;

  CircleButton(this.mini, this.icon, this.iconSize, this.color);

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.mini,
        onPressed: onPressedButton,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: Color(0xFF4268d3),
        ),
      ),
    );
  }
}
