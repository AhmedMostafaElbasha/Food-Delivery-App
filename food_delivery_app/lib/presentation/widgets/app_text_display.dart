import 'package:flutter/material.dart';
import 'package:food_delivery_app/utilities/utilities.dart';

class AppTextDisplay extends StatelessWidget {
  final String translation;
  final String text;
  final TextAlign textAlign;
  final TextStyle textStyle;
  final int maxLines;
  final TextOverflow overflow;

  AppTextDisplay({
    Key key,
    this.translation = '',
    this.text = '',
    this.textAlign = TextAlign.start,
    this.textStyle,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  })  : assert(translation != '' || text != ''),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      translation == ''
          ? text
          : AppLocalizations.of(context).translate(translation),
      softWrap: true,
      textAlign: textAlign,
      maxLines: maxLines,
      style: textStyle ?? TextStyle(),
      overflow: overflow,
    );
  }
}
