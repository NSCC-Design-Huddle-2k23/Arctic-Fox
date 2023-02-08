import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:huddle/constant/constant.dart';
import 'package:huddle/main.dart';
import 'package:huddle/routes/home.dart';
import 'package:huddle/routes/login.dart';
import 'package:huddle/routes/pages.dart';
import 'package:huddle/routes/pay_inside.dart';
import 'package:huddle/routes/sign_up.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import "package:flutter_remixicon/flutter_remixicon.dart";

int pageIndex = 1;

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  late double deviceWidth;
  late double deviceHeight;
  @override
  void dispose() {
    super.dispose();
    pageIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: Constants.contrast,
          title: const Text(
            "FOX PAY",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: PlasmaRenderer(
          type: PlasmaType.infinity,
          particles: 10,
          color: const Color(0x7045167e),
          blur: 0.4,
          size: 1,
          speed: 5,
          offset: 0,
          blendMode: BlendMode.plus,
          particleType: ParticleType.atlas,
          variation1: 0,
          variation2: 0,
          variation3: 0,
          rotation: 0,
          child: pageIndex == 1
              ? home_stuff(deviceHeight, deviceWidth, context)
              : pageIndex == 0
                  ? profile()
                  : transactions(),
        ),
      ),
      bottomNavigationBar: FluidNavBar(
        defaultIndex: 1, animationFactor: 0.5,
        // (1)
        icons: [
          // (2)
          FluidNavBarIcon(icon: MIcon.riUser3Line), // (3)
          FluidNavBarIcon(icon: MIcon.riHomeLine),
          FluidNavBarIcon(icon: MIcon.riExchangeFundsLine),
        ],
        style: const FluidNavBarStyle(
            barBackgroundColor: Colors.black,
            iconBackgroundColor: Colors.black,
            iconSelectedForegroundColor: Colors.purple,
            iconUnselectedForegroundColor: Colors.white),
        onChange: (int index) {
          setState(() {
            pageIndex = index;
          });
        }, // (4)
      ),
    );
  }
}
