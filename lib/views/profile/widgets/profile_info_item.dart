import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/my_colors.dart';
import '../../../utils/my_fonts.dart';

class ProfileInfoItem extends StatelessWidget {
  const ProfileInfoItem({
    Key? key,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: MyFonts.w400.copyWith(
              fontSize: 13,
              color: MyColors.c464646,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            subTitle,
            style: MyFonts.w400.copyWith(
              fontSize: 13,
              color: MyColors.c674D3F,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: MyColors.cDEE1EF,
          )
        ],
      ),
    );
  }

  final String title;
  final String subTitle;
}
