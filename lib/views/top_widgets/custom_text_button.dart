import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/my_colors.dart';
import '../../utils/my_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.colorOfButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: MyColors.c674D3F,
          backgroundColor: colorOfButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            title,
            style: MyFonts.w700.copyWith(
              fontSize: 16.sp,
              color: MyColors.white,
            ),
          ),
        ),
      ),
    );
  }

  final String title;
  final VoidCallback onTap;
  final Color colorOfButton;
}
