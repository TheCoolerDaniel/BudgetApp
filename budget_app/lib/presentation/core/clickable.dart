import 'package:flutter/material.dart';

class Clickable extends StatelessWidget {
  static BorderRadius defaultBorderRadius = BorderRadius.circular(20);

  final Widget child;
  final VoidCallback? onPressed;
  final Color color;
  final bool suppressAnimation;
  final BorderRadius? borderRadius;

  const Clickable({
    Key? key,
    required this.child,
    required this.onPressed,
    this.suppressAnimation = false,
    this.color = Colors.transparent,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        borderRadius: borderRadius ?? defaultBorderRadius,
        focusColor: suppressAnimation ? Colors.transparent : null,
        hoverColor: suppressAnimation ? Colors.transparent : null,
        highlightColor: suppressAnimation ? Colors.transparent : null,
        splashColor: suppressAnimation ? Colors.transparent : null,
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
