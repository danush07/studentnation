import 'package:flutter/material.dart';
import 'package:studentnation/theme/pallete.dart';

class SmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  const SmallButton({super.key, required this.onTap,
    this.backgroundColor = Pallete.whiteColor,
    this.textColor = Pallete.backgroundColor,
        required this.label});

  @override
  Widget build(BuildContext context) {
    return  Chip(
        label: Text(label,
          style: TextStyle(color:textColor,
          fontSize: 16),
        ),
    backgroundColor: backgroundColor,
    labelPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),);
  }
}
