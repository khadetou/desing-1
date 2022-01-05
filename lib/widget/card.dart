import 'package:flutter/material.dart';
import "./colors.dart" as colors;

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  _cart(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.only(right: 13),
      height: 243,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 286,
            child: ClipRRect(
              child: Image(
                image: AssetImage('assets/images/cart-image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                " \$65.99",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: colors.textColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "\$79.99",
                style: TextStyle(
                  fontSize: 17,
                  height: 1,
                  color: colors.greyColor,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                width: 83,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: colors.pillBackgroundColor,
                ),
                child: const Center(
                  child: Text(
                    "20% off",
                    style: TextStyle(
                      fontSize: 13,
                      height: 1,
                      color: colors.pillColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          const SizedBox(
            width: 286,
            child: Text(
              "XBOX One Controller",
              style: TextStyle(
                  fontSize: 17,
                  height: 1.2,
                  color: colors.textColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          const SizedBox(
            width: 286,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              style: TextStyle(
                fontSize: 13,
                height: 1.2,
                color: colors.textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 24),
      height: 258,
      child: ListView.builder(
        itemCount: 2,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cart(context, index);
        },
      ),
    );
  }
}
