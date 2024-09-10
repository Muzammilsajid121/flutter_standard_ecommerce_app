import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

//-- Most of Styling already define in utils > Themes > ChipTheme.dart
class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool?) onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFucntion.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: isColor
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgrounColor: THelperFucntion.getColor(text)!)
          : null,

      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      selectedColor: isColor ? THelperFucntion.getColor(text)! : null,
      backgroundColor: isColor ? THelperFucntion.getColor(text)! : null,
    );
  }
}
