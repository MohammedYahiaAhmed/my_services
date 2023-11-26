import 'package:flutter/material.dart';
import 'package:my_services/components/category_2_item.dart';
import 'package:my_services/components/category_item.dart';
import 'package:my_services/screen/carpenter.dart';
import 'package:my_services/screen/electricion.dart';
import 'package:my_services/screen/plumber.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
      child: Column(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFB703),
                ),
                child: const Icon(
                  Icons.search,
                  size: 35,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'بحث',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Category2(
                text: 'نظام الشكاوي',
                icon: Icons.info_outline,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              child: Category2(
                text: 'إضافة خدمة',
                icon: Icons.check_circle_outline,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Category(
                  textContainer: 'الخدمات',
                  iconContainer: Icons.settings_outlined,
                  colorContainer1: const Color(0xffF97BA7),
                  image1: 'asset/sharing.png',
                  text1: 'جمعيات أهلية',
                  colorContainer2: const Color(0xffBECAE6),
                  image2: 'asset/medicine.png',
                  text2: 'صيدليات',
                  colorContainer3: const Color(0xffFD5C67),
                  image3: 'asset/doctor.png',
                  text3: 'أطباء',
                ),
                const SizedBox(
                  height: 20,
                ),
                Category(
                  textContainer: 'صنايعيه',
                  iconContainer: Icons.contact_phone_outlined, //Gasoline
                  colorContainer1: const Color.fromARGB(255, 21, 121, 91),
                  image1: 'asset/screwdriver.png',
                  text1: 'كهرباء',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Electricion();
                      },
                    ));
                  },
                  colorContainer2: const Color(0xffFFB703),
                  image2: 'asset/carpenter.png',
                  text2: 'نجارة',
                  onTap2: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Carpentry();
                      },
                    ));
                  },
                  colorContainer3: const Color(0xff023047),
                  image3: 'asset/plumbing.png',
                  text3: 'سباكه',
                  onTap3: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Plumber();
                    }));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
