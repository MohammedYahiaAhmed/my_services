// import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({
    super.key,
    this.textContainer,
    this.iconContainer,
    this.image1,
    this.text1,
    this.image2,
    this.text2,
    this.image3,
    this.text3,
    this.colorContainer1,
    this.colorContainer2,
    this.colorContainer3,
    this.onTap,
    this.onTap2,
    this.onTap3,
  });

  String? textContainer;
  IconData? iconContainer;
  Color? colorContainer1;
  Color? colorContainer2;
  Color? colorContainer3;
  String? image1;
  String? image2;
  String? image3;
  String? text1;
  String? text2;
  String? text3;
  Function()? onTap; //    or VoidCallback? onTap
  Function()? onTap2; //    or VoidCallback? onTap
  Function()? onTap3; //    or VoidCallback? onTap

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'عرض الكل',
                style: TextStyle(
                  color: Color(0xff023047),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                textContainer!,
                style: const TextStyle(
                  color: Color(0xff023047),
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              Icon(
                iconContainer,
                color: const Color(0xff023047),
                size: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colorContainer1,
                          ),
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            image1!,
                            scale: 10,
                          ),
                        ),
                      ),
                      Text(
                        text1!,
                        style: const TextStyle(
                            color: Color(0xff023047),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: onTap2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colorContainer2,
                          ),
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            image2!,
                            scale: 10,
                          ),
                        ),
                      ),
                      Text(
                        text2!,
                        style: const TextStyle(
                          color: Color(0xff023047),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: onTap3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colorContainer3,
                          ),
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            image3!,
                            scale: 10,
                          ),
                        ),
                      ),
                      Text(
                        text3!,
                        style: const TextStyle(
                          color: Color(0xff023047),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
