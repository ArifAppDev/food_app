import 'package:flutter/material.dart';
import 'package:food_app/core/custom_assets/custom_lottie_animation/lottie_animation.dart';

import 'package:food_app/presentation/screens/home/models/food_model.dart';
import 'package:food_app/utils/app_color/app_colors.dart';

import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FoodModels item = FoodModels.fromMap(Get.arguments);

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Text(
          "Confirm Order",
          style: TextStyle(fontSize: 20, color: AppColors.white),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.white),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            Lottie.asset(LottieAnimation.order, height: 250, width: 300),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff262626),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                height: 110,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(18),
                      child: SizedBox(
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                          height: 110,
                          width: 120,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(width: 15),

                              Icon(Icons.star, color: Colors.yellow, size: 15),
                              SizedBox(width: 5),
                              Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          Text(
                            "Price: ${item.price}",
                            style: const TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
