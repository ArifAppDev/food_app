import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/custom_assets/custom_icons/custom_icons.dart';

import 'package:food_app/core/static_string/static_strings.dart';
import 'package:food_app/core/utils/colors/app_colors.dart';
import 'package:food_app/presentation/home/model/discount_model.dart';

class TopDiscount extends StatelessWidget {
  const TopDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StaticStrings.topDiscount,
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
            children: List.generate(discounts.length, (index) {
              return TopDiscountDesign(
                resturantImage: discounts[index]["resImg"],
                resturantName: discounts[index]["resname"],
                distance: discounts[index]["distance"],
                reviews: discounts[index]["review"],
              );
            }),
          ),
        ),

        SizedBox(height: 200),
      ],
    );
  }
}

class TopDiscountDesign extends StatelessWidget {
  const TopDiscountDesign({
    super.key,
    required this.resturantImage,
    required this.resturantName,
    required this.distance,
    required this.reviews,
  });

  final String resturantImage;
  final String resturantName;
  final String distance;
  final String reviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),

            child: Image.asset(
              resturantImage,
              fit: BoxFit.cover,
              height: 120,
              width: 180,
            ),
          ),

          SizedBox(height: 15),

          Text(
            resturantName,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),

          Row(
            children: [
              SizedBox(width: 9),
              Text(
                distance,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  height: 5,
                  CustomIcons.dot,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),

              Icon(Icons.star, color: Colors.amber, size: 19),
              SizedBox(width: 3),

              Text(
                reviews,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(width: 9),
            ],
          ),
        ],
      ),
    );
  }
}
