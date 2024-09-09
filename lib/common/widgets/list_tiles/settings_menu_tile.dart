import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';

class TSettingMenuTile extends StatelessWidget {
  const TSettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.Subtitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title, Subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Material(
      color: isDarkMode ? TColors.black : TColors.white, // Background color
      child: ListTile(
        leading: Icon(
          icon,
          size: 28,
          color: TColors.primary,
        ),
        title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        subtitle: Text(Subtitle, style: Theme.of(context).textTheme.bodyMedium),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
