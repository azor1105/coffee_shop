import 'package:coffee_shop/utils/my_colors.dart';
import 'package:coffee_shop/utils/my_fonts.dart';
import 'package:coffee_shop/utils/my_icons.dart';
import 'package:coffee_shop/views/home/home_screen.dart';
import 'package:coffee_shop/views/login/widgets/login_screen_painter.dart';
import 'package:coffee_shop/views/top_widgets/custom+outlinded_text_button.dart';
import 'package:coffee_shop/views/top_widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cFFF9F2,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: CustomPaint(
                  size: Size(double.infinity,
                      MediaQuery.of(context).size.height * 0.4),
                  painter: LoginScreenPainter(),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 60.w,
                      top: 76.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Grab a cup of",
                              style: MyFonts.w700.copyWith(
                                fontSize: 28.sp,
                                color: MyColors.cEDE0D4,
                              ),
                            ),
                            Text(
                              "coffee",
                              style: MyFonts.w700.copyWith(
                                fontSize: 64.sp,
                                color: MyColors.cE7BC91,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(MyIcons.coffeeCup),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Image.asset(MyIcons.coffeeBeans),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextButton(
                  onTap: () {},
                  title: "Log in",
                  colorOfButton: MyColors.cBE9173,
                ),
              ),
              SizedBox(height: 72.h),
              Text(
                "Don't have an account?",
                style: MyFonts.w400.copyWith(
                  fontSize: 13.sp,
                  color: MyColors.c464646,
                ),
              ),
              SizedBox(height: 6.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomTextButton(
                  onTap: () {},
                  title: "Sign in",
                  colorOfButton: MyColors.cBE9173,
                ),
              ),
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOutlinedTextButton(
                      imagePath: MyIcons.googleIcon,
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      colorOfButton: Colors.transparent,
                    ),
                    CustomOutlinedTextButton(
                      imagePath: MyIcons.facebookIcon,
                      onTap: () {},
                      colorOfButton: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
