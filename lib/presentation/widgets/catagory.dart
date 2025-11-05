import 'package:flutter/material.dart';

import 'package:food_app/presentation/screens/home/models/catagory_model.dart';
import 'package:food_app/utils/app_color/app_colors.dart';
import 'package:food_app/utils/static_string/static_strings.dart';

class Catagory extends StatelessWidget {
  const Catagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StaticStrings.topcatagories,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),

              Text(
                StaticStrings.seeall,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(catagorys.length, (index) {
              return CatagoryDesign(
                catagoryImg: catagorys[index]["ctImg"],
                catagoryName: catagorys[index]["ctnName"],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class CatagoryDesign extends StatelessWidget {
  const CatagoryDesign({
    super.key,
    required this.catagoryImg,
    required this.catagoryName,
  });

  final String catagoryImg;
  final String catagoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Image.asset(catagoryImg, height: 60, width: 60, fit: BoxFit.cover),
          SizedBox(height: 20),

          Text(
            catagoryName,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
