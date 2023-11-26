import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryServices extends StatelessWidget {
  CategoryServices({super.key, this.pointStar, this.name, this.icon});

  String? pointStar;
  String? name;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              icon!,
              color: Colors.green,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(children: [
              Text(
                '$name',
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              const Text('المنيا - العنوان')
            ]),
            const Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  '$pointStar',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
