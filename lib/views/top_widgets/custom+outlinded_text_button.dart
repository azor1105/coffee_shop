import '../../utils/my_colors.dart';
import 'package:flutter/material.dart';

class CustomOutlinedTextButton extends StatelessWidget {
  const CustomOutlinedTextButton({
    Key? key,
    required this.imagePath,
    required this.onTap,
    required this.colorOfButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 150,
      child: TextButton(
        style: TextButton.styleFrom(
          side: const BorderSide(width: 1, color: MyColors.cBE9173),
          primary: MyColors.c674D3F,
          backgroundColor: colorOfButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onTap,
        child: Center(child: Image.asset(imagePath)),
      ),
    );
  }

  final String imagePath;
  final VoidCallback onTap;
  final Color colorOfButton;
}
