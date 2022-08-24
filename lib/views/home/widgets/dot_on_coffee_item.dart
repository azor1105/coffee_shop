import 'package:coffee_shop/utils/my_colors.dart';
import 'package:flutter/material.dart';

class DotOnCoffeeItem extends StatelessWidget {
  const DotOnCoffeeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: const BoxDecoration(
        color: MyColors.c674D3F,
        shape: BoxShape.circle,
      ),
    );
  }
}
