import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category2 extends StatelessWidget {
  Category2({super.key, this.text, this.icon});
  String? text;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFFB703),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text!,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Icon(
              icon,
              color: const Color(0xff023047),
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
