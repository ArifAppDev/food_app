import 'package:flutter/material.dart';
import 'package:food_app/core/custom_assets/custom_lottie_animation/lottie_animation.dart';
import 'package:food_app/core/utils/colors/app_colors.dart';

import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Receive the passed image
    final String selectedImage = Get.arguments as String;
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
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(selectedImage, fit: BoxFit.cover),
            ),

            SizedBox(height: 30),

            Lottie.asset(LottieAnimation.order, height: 250, width: 300),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 20),

                      Icon(Icons.shopping_cart, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
