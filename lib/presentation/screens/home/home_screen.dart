import 'package:flutter/material.dart';
import 'package:food_app/presentation/widgets/catagory.dart';

import 'package:food_app/presentation/widgets/custom_app_bar.dart';
import 'package:food_app/presentation/widgets/search_box.dart';
import 'package:food_app/presentation/widgets/slider_design.dart';
import 'package:food_app/presentation/widgets/top_discount.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // =============custom app bar==============
          CustomAppBar(),

          //==========search box============
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchBox(),

                  //======= slider=============
                  SliderDesign(),

                  //============ catagory ===========
                  Catagory(),

                  //==========Top Discount==========
                  TopDiscount(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
