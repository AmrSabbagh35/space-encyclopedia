import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_encyclopedia/view/custom_slider.dart';

import '../view/background_dottes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = CarouselController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF1946AD).withOpacity(0.9),
            automaticallyImplyLeading: false,
          ),
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue.darkHighContrastColor,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF1946AD).withOpacity(0.9),
                        const Color(0xFF1946AD),
                        const Color(0xFF0D0B2A),
                      ],
                    ),
                  ),
                ),
                const BackgroundDotes(
                  x: -0.75,
                  y: -0.82,
                  color: Colors.green,
                  height: 20,
                  width: 20,
                ),
                const BackgroundDotes(
                  x: -1,
                  y: -0.8,
                  color: Colors.amber,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: -0.9,
                  y: 0.15,
                  color: Colors.deepOrangeAccent,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: -0.65,
                  y: 0.75,
                  color: Colors.deepPurpleAccent,
                  height: 15,
                  width: 15,
                ),
                const BackgroundDotes(
                  x: -0.99,
                  y: .8,
                  color: Colors.cyan,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: 0.93,
                  y: -0.8,
                  color: Colors.blue,
                  height: 20,
                  width: 20,
                ),
                const BackgroundDotes(
                  x: 0.96,
                  y: 0.4,
                  color: Colors.grey,
                  height: 10,
                  width: 10,
                ),
                const BackgroundDotes(
                  x: 0.73,
                  y: 0.9,
                  color: Colors.yellowAccent,
                  height: 15,
                  width: 15,
                ),
                CustomCarouselSlider(controller: controller)
                    .animate()
                    .slide(
                      curve: const FlippedCurve(Curves.bounceIn),
                      duration: const Duration(milliseconds: 950),
                    )
                    .scale(),
              ],
            ),
          ),
        );
      },
    );
  }
}
