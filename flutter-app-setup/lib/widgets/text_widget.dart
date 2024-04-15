import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    this.text,
    this.color,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.textOverflow,
  });

  final String? text;
  final Color? color;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        overflow: textOverflow,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
