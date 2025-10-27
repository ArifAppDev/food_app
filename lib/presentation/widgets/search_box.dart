import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/custom_assets/custom_icons/custom_icons.dart';
import 'package:food_app/core/static_string/static_strings.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(CustomIcons.search, height: 18),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(CustomIcons.equilizer, height: 23),
              ),
              fillColor: Color(0xff151e1e),
              filled: true,
              hintText: StaticStrings.searchboxtext,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),

              // when the user is not focushed
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70),
                borderSide: BorderSide(color: Colors.black, width: 0.6),
              ),

              // when the user is focushed
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70),
                borderSide: BorderSide(color: Colors.black, width: 0.6),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70),
                borderSide: BorderSide(color: Colors.black, width: 0.6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
