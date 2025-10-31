import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/custom_assets/custom_images/custom_images.dart';
import 'package:food_app/core/routes/app_routes.dart';
import 'package:food_app/core/static_string/static_strings.dart';
import 'package:food_app/core/utils/colors/app_colors.dart';
import 'package:food_app/presentation/screens/home/controllers/slider_controller.dart';
import 'package:food_app/presentation/screens/home/models/food_model.dart';

import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderDesign extends StatelessWidget {
  const SliderDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FoodModels> sliderItems = [
      FoodModels(
        image: CustomImages.burger,
        name: "Beef Burger",
        price: "\$ 7",
      ),
      FoodModels(image: CustomImages.pizza, name: "Pizza", price: "\$ 20"),
      FoodModels(image: CustomImages.pasta, name: "Pasta", price: "\$ 10"),
      FoodModels(
        image: CustomImages.icecream,
        name: "Ice Cream",
        price: "\$ 5",
      ),
    ];

    final CarouselSliderController carouselController =
        CarouselSliderController();
    // dependency injection

    final SliderController sliderController = Get.put(SliderController());

    return Column(
      children: [
        SizedBox(height: 50),
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: 180.0,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              sliderController.updateIndex(index);
            },
          ),

          items: sliderItems.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),

                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20),
                    child: Stack(
                      children: [
                        Image.asset(
                          i.image,
                          fit: BoxFit.cover,
                          height: 180,
                          width: double.infinity,
                        ),
                        Positioned(
                          top: 10,
                          left: 0,
                          right: 180,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 100,
                                child: Text(
                                  "Claim your discount 30% daily now!",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              SizedBox(height: 40),

                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    AppRoutes.orderpage,
                                    arguments: i.toMap(),
                                  );
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      StaticStrings.ordernow,
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),

        SizedBox(height: 30),

        Obx(
          () => AnimatedSmoothIndicator(
            activeIndex: sliderController.currentIndex.value, // PageController
            count: sliderItems.length,
            effect: WormEffect(
              dotColor: Colors.white,
              activeDotColor: Colors.deepOrange,
              spacing: 10,
            ),
            // your preferred effect
            onDotClicked: (index) {},
          ),
        ),
      ],
    );
  }
}
