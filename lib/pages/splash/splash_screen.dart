import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todolist/pages/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (conetxt) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF7F2),
      body: SafeArea(
        child: Stack(
          children: [
            // background soft circle blob
            Positioned(
              top: size.height * 0.12,
              left: size.width * 0.12,

              child: Container(
                width: size.width * 0.72,
                height: size.width * 0.72,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD9C7),
                  borderRadius: BorderRadius.circular(size.width),
                ),
              ),
            ),

            // main girl / hero illustration
            Positioned(
              top: size.height * 0.18,
              left: size.width * 0.18,
              right: size.width * 0.18,

              child: Image.asset(
                'assets/images/girl.png',
                fit: BoxFit.contain,
                height: size.height * 0.34,
              ),
            ),

            // Clock on top left
            Positioned(
              top: size.height * 0.12,
              left: size.width * 0.10,
              child: Image.asset(
                'assets/images/clock.png',
                height: 28,
                width: 28,
              ),
            ),

            // star top right
            Positioned(
              top: size.height * 0.17,
              right: size.width * 0.10,
              child: Image.asset(
                'assets/images/ellipse.png',
                width: 52,
                height: 52,
              ),
            ),
            // coffe cup bottom right of hero
            Positioned(
              top: size.height * 0.34,
              left: size.width * 0.05,
              child: Image.asset(
                'assets/images/coffe.png',
                height: 80,
                width: 80,
              ),
            ),
            // String / decorative line left
            Positioned(
              top: size.height * 0.39,
              left: size.width * 0.01,
              child: Image.asset('assets/images/decorations.png', width: 90),
            ),

            Positioned(
              top: size.height * 0.46,
              left: size.width * 0.20,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF8A65),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // bottom texts
            Positioned(
              left: 24,
              right: 24,
              bottom: size.height * 0.16,
              child: Column(
                children: const [
                  Text(
                    'Manage your \ndaily tasks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),

                  SizedBox(height: 14),
                  Text(
                    'Organize work track progress, \nand stay productive everyday',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFF6B6B6B),
                    ),
                  ),
                ],
              ),
            ),

            // Get started button
            Positioned(
              left: 24,
              right: 24,
              bottom: 32,
              child: SizedBox(
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF7A45),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(18),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
