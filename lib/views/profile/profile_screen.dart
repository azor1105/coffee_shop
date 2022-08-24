import 'package:coffee_shop/utils/my_colors.dart';
import 'package:coffee_shop/utils/my_fonts.dart';
import 'package:coffee_shop/views/profile/widgets/profile_info_item.dart';
import 'package:coffee_shop/views/top_widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/my_icons.dart';
import '../home/widgets/home_screen_painter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cFFF9F2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: CustomPaint(
                  size: const Size(double.infinity, 150),
                  painter: HomeScreenPainter(),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 26,
                      left: 29,
                      right: 29,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(MyIcons.downArrow),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            MyIcons.userImg,
                            height: 44,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 29.w),
                child: Text(
                  "Profile",
                  style: MyFonts.w700.copyWith(
                    fontSize: 32.sp,
                    color: MyColors.c674D3F,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 39.w),
                child: Row(
                  children: [
                    Image.asset(MyIcons.userImg),
                    SizedBox(width: 24.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jackie John",
                          style: MyFonts.w500.copyWith(
                            fontSize: 24.sp,
                            color: MyColors.c674D3F,
                          ),
                        ),
                        Text(
                          "Online",
                          style: MyFonts.w400.copyWith(
                            fontSize: 20.sp,
                            color: MyColors.c674D3F,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.h),
              const ProfileInfoItem(
                subTitle: "Username",
                title: "juackie_johkn",
              ),
              SizedBox(height: 38.h),
              const ProfileInfoItem(
                subTitle: "First name",
                title: "juackie",
              ),
              SizedBox(height: 38.h),
              const ProfileInfoItem(
                subTitle: "Last name",
                title: "johkn",
              ),
              SizedBox(height: 38.h),
              const ProfileInfoItem(
                subTitle: "Date of birth",
                title: "25 march 2001",
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextButton(
                  onTap: () {},
                  colorOfButton: MyColors.cBE9173,
                  title: "Sign out",
                ),
              ),
              SizedBox(
                height: 72.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
