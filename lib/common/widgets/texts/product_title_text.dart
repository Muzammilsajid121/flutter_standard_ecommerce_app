import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  TProductTitleText({super.key,

      required this.title,
      this.maximumlines = 2,
      this.smallsize = true,
      this.textAlign = TextAlign.left,
      });

  final TextAlign? textAlign;
  final int maximumlines;
  final String title;
  final bool smallsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallsize ? Theme.of(context).textTheme.bodyMedium : Theme.of(context).textTheme.bodyLarge,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maximumlines,
    );
  }
}