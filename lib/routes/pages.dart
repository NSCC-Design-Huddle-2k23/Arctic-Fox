import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:huddle/constant/constant.dart';
import 'package:huddle/main.dart';
import 'package:huddle/routes/login.dart';
import 'package:huddle/routes/pay_inside.dart';
import 'package:huddle/routes/sign_up.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import "package:flutter_remixicon/flutter_remixicon.dart";

Widget home_stuff(
    double deviceHeight, double deviceWidth, BuildContext context) {
  final List<String> images = [
    "https://i.pravatar.cc/150?img=9",
    "https://i.pravatar.cc/150?img=8",
    "https://i.pravatar.cc/150?img=7",
    "https://i.pravatar.cc/150?img=5",
    "https://i.pravatar.cc/150?img=4",
    "https://i.pravatar.cc/150?img=3"
  ];
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.only(top: deviceHeight / 10, bottom: 30),
        //   child: SizedBox(
        //     width: deviceWidth / 1.8,
        //     height: deviceWidth / 1.8,
        //     child: Image.asset('assets/images/logo.png',
        //         fit: BoxFit.contain),
        //   ),
        // ),
        const Padding(
          padding: EdgeInsets.only(
            top: 25,
          ),
        ),
        //   child: const Text(
        //     "Category",
        //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
        //   ),
        // ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: deviceWidth / 1.1,
            //   height: deviceWidth / 1.5,
            //   decoration: const BoxDecoration(
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(
            //             color: Color.fromARGB(255, 0, 0, 0),
            //             blurRadius: 10.0,
            //             offset: Offset(0, 2)),
            //       ],
            //       borderRadius: BorderRadius.all(Radius.circular(32))),
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/credit.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
              children: <Widget>[
                Hero(
                  tag: images[0],
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[0]),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          print("WHII");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PayInside(url: images[0])));
                        },
                      ),
                    ),
                  ),
                ),
                Hero(
                  tag: images[1],
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[1]),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          print("WHII");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PayInside(url: images[1])));
                        },
                      ),
                    ),
                  ),
                ),
                Hero(
                  tag: images[2],
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[2]),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          print("WHII");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PayInside(url: images[2])));
                        },
                      ),
                    ),
                    // child: const Text('Sound of screams but the'),
                  ),
                ),
                Hero(
                  tag: images[3],
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[3]),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          print("WHII");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PayInside(url: images[3])));
                        },
                      ),
                    ),
                    // child: const Text('Who scream'),
                  ),
                ),
                Hero(
                  tag: images[4],
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[4]),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          print("WHII");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PayInside(url: images[4])));
                        },
                      ),
                    ),
                    // child: const Text('Revolution is coming...'),
                  ),
                ),
                Hero(
                  tag: images[5],
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7.0,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[5]),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          print("WHII");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PayInside(url: images[5])));
                        },
                      ),
                    ),
                    // child: const Text('Revolution, they...'),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: deviceHeight / 5))
          ],
        ),
      ],
    ),
  );
}

Widget profile() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text("Nothing To View Here",
        style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600))
  ]);
}

Widget transactions() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text("Nothing To View Here",
        style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600))
  ]);
}
