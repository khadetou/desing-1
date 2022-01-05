import 'package:flutter/material.dart';
import "./colors.dart" as colors;
import 'package:feather_icons/feather_icons.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);
  _cartPage(String text, Color color, Color textColor) {
    return Container(
      height: 157,
      width: 150,
      padding: const EdgeInsets.only(top: 18, left: 14, right: 14, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 128,
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 21,
                height: 1.2,
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.white),
            child: const Center(
              child: Icon(FeatherIcons.chevronRight),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _cartPage(
                'Shopping habbits and Interrests',
                colors.shoppingColor,
                colors.textColor,
              ),
              _cartPage(
                'Today’s trending items',
                colors.trendingColor,
                Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _cartPage(
                'Incomming Flash deals',
                colors.incommingColor,
                Colors.white,
              ),
              _cartPage(
                'Browse our categories',
                colors.browseColor,
                Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
