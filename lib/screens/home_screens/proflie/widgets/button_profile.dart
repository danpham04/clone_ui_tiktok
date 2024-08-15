import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    super.key,
    this.onPressed,
    required this.child,
    this.borderBox,
    this.color,
  });
  final void Function()? onPressed;
  final Widget child;
  final double? borderBox;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(borderBox ?? 0),
              ),
              backgroundColor: color),
          onPressed: onPressed,
          child: child),
    );
  }
}
