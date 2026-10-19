import 'package:flutter/material.dart';

class ButtonGeneral extends StatelessWidget {
  const ButtonGeneral({
    super.key,
    required this.borderRadius,
    required this.color,
    required this.textColor,
    required this.text,
    this.style,
    this.padding,
    this.onPressed,
  });
  final BorderRadiusGeometry borderRadius;
  final Color color;
  final Color textColor;
  final String text;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: MaterialButton(
        padding: padding,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        color: color,
        textColor: textColor,
        child: Center(child: Text(text, style: style)),
      ),
    );
  }
}
