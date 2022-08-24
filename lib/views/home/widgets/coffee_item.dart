import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/my_colors.dart';
import '../../../utils/my_fonts.dart';
import '../../../utils/my_icons.dart';
import 'dot_on_coffee_item.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          width: 142,
          padding: EdgeInsets.only(bottom: 21.h, top: 8.h),
          decoration: BoxDecoration(
            color: MyColors.cECE1CF,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(MyIcons.latteCoffee),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.only(left: 13.w),
                child: Text(
                  "Latte",
                  style: MyFonts.w700.copyWith(
                    fontSize: 14,
                    color: MyColors.c674D3F,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 13.w),
                child: Row(
                  children: [
                    const DotOnCoffeeItem(),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "espresso",
                      style: MyFonts.w400.copyWith(
                        fontSize: 14,
                        color: MyColors.c674D3F,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.w),
                child: Row(
                  children: [
                    const DotOnCoffeeItem(),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "steamed milk",
                      style: MyFonts.w400.copyWith(
                        fontSize: 14,
                        color: MyColors.c674D3F,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h),
        SizedBox(
          width: 87,
          height: 32,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: MyColors.c674D3F,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Order",
              style: MyFonts.w400.copyWith(
                fontSize: 14,
                color: MyColors.cFFF9F2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
