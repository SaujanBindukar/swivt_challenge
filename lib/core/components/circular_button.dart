import 'package:flutter/material.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.iconData,
    this.onTap,
    this.backgroundColor,
    this.iconColor,
  }) : super(key: key);
  final VoidCallback? onTap;
  final IconData iconData;
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: backgroundColor ?? AppColors.transparentColor,
        child: Icon(
          iconData,
          color: iconColor ?? Colors.amber.shade900,
        ),
      ),
    );
  }
}
