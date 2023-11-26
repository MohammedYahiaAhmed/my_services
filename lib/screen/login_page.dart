import 'package:flutter/material.dart';
import 'package:my_services/screen/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 144, 144),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              const Image(
                image: AssetImage(
                  'asset/Login-pana.png',
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffFBECDF)),
                  height: 70,
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Icon(
                        Icons.email,
                        size: 34,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'Continue with Gmail',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 10,
              ),
            ]),
      ),
    );
  }
}
