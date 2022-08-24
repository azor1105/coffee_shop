import 'package:coffee_shop/utils/my_colors.dart';
import 'package:coffee_shop/utils/my_fonts.dart';
import 'package:coffee_shop/utils/my_icons.dart';
import 'package:coffee_shop/views/home/widgets/coffee_item.dart';
import 'package:coffee_shop/views/home/widgets/home_screen_painter.dart';
import 'package:coffee_shop/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 69,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(45.r),
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 5,
              color: Colors.grey.shade300,
              offset: const Offset(1, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(45.r),
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Image.asset(MyIcons.homeIcon)),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Image.asset(MyIcons.coffeeBeansIcon)),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(MyIcons.profileIcon)),
                label: "",
              ),
            ],
          ),
        ),
      ),
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
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          },
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.w),
                child: Text(
                  "Hot Coffee",
                  style: MyFonts.w700.copyWith(
                    fontSize: 23.sp,
                    color: MyColors.c674D3F,
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => const CoffeeItem(),
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.w),
                child: Text(
                  "Cold Coffee",
                  style: MyFonts.w700.copyWith(
                    fontSize: 23.sp,
                    color: MyColors.c674D3F,
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => const CoffeeItem(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
