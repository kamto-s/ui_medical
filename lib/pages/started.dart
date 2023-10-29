import 'package:flutter/material.dart';
import 'package:ui_medical/pages/homepage.dart';

class StartedPages extends StatefulWidget {
  const StartedPages({super.key});

  @override
  State<StartedPages> createState() => _StartedPagesState();
}

class _StartedPagesState extends State<StartedPages> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Container(
              height: size.height / 1.8,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2020/08/03/09/43/medical-5459654_1280.png",
                width: size.width,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "All specialists in one app",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    "Find your doctor and make an\nappointment with one app.",
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: Container(
                      height: 56,
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
