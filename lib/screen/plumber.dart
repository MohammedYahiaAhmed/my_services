import 'package:flutter/material.dart';
import 'package:my_services/components/category_services.dart';

class Plumber extends StatelessWidget {
  const Plumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9),
        appBar: AppBar(
          backgroundColor: const Color(0xff023047),
          title: const Center(
              child: Text(
            'الفئه : سباك',
            style: TextStyle(
              fontSize: 30,
            ),
          )),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Image(
                image: AssetImage(
                  'asset/download (3).jpg',
                ),
                // width: 300,
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '4.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '3.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '4.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '2.0',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '5.0',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '1.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '3.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '4.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '4.5',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '4.0',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '1.0',
                      ),
                      CategoryServices(
                        icon: Icons.construction,
                        name: 'اسم السباك',
                        pointStar: '3.5',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
