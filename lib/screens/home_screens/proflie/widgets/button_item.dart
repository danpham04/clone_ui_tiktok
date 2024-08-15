import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    this.onPressed,
    required this.icon,
    this.color,
    this.size,
  });

  final void Function()? onPressed;
  final IconData icon;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: color,
      iconSize: size,
    );
  }
}
