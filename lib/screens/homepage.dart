import 'package:design1/widget/button.dart';
import 'package:design1/widget/card.dart';
import 'package:design1/widget/category.dart';
import 'package:design1/widget/interests-list.dart';
import 'package:flutter/material.dart';
import "../widget/colors.dart" as colors;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 240,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Find the stuff you love.",
                                style: TextStyle(
                                  height: 1.1,
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  color: colors.textColor,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                "Take a look at we found for you!",
                                style: TextStyle(
                                    fontSize: 17,
                                    height: 1.2,
                                    fontWeight: FontWeight.normal,
                                    color: colors.textColor),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("assets/images/avatar.png")),
                        )
                      ],
                    ),
                  ),
                  const Cards(),
                  const SizedBox(
                    height: 22.0,
                  ),
                  const Button(),
                  const SizedBox(
                    height: 46.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Your interests",
                          style: TextStyle(
                            fontSize: 21,
                            height: 1.1,
                            color: colors.textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                colors.linkColor),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Interests(),
                  const SizedBox(
                    height: 28.0,
                  ),
                  const Category(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
