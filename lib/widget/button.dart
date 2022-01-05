import 'package:flutter/material.dart';
import "./colors.dart" as colors;

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        "Discover more",
        style: TextStyle(
            fontSize: 17,
            height: 1.1,
            fontWeight: FontWeight.w600,
            color: Colors.white),
      ),
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(5.0),
          backgroundColor:
              MaterialStateProperty.all<Color>(colors.primaryColor),
          minimumSize: MaterialStateProperty.all<Size>(const Size(331, 46)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100.0))))),
      onPressed: () {},
    );
  }
}
