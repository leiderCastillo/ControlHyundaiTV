
import 'package:flutter/material.dart';

class ButtonRectangle extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  const ButtonRectangle({
    required this.onPressed,
    required this.child,
    this.backgroundColor = const Color.fromRGBO(238, 238, 238, 1),
    this.foregroundColor = Colors.black,
    super.key
  });

  @override
  State<ButtonRectangle> createState() => _ButtonRectangleState();
}

class _ButtonRectangleState extends State<ButtonRectangle> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
        elevation: 0,
        foregroundColor: widget.foregroundColor,
        padding: const EdgeInsets.fromLTRB(26,15,26,15)
      ),
      onPressed: (){widget.onPressed();},
      child: widget.child
    );
  }
}