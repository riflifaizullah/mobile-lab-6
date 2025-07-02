import 'package:flutter/cupertino.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final TextStyle style;
  const ReusableText({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.fade,
      softWrap: false,
      style: style,
    );
  }
}
