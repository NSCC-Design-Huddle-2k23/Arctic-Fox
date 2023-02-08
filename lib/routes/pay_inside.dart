import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_animations/simple_animations.dart';

import '../constant/constant.dart';

class PayInside extends StatefulWidget {
  final String url;
  const PayInside({super.key, required this.url});

  @override
  State<PayInside> createState() => _PayInsideState();
}

class _PayInsideState extends State<PayInside> {
  late double deviceWidth;
  late double deviceHeight;
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: deviceHeight / 10, bottom: 30),
                  child: SizedBox(
                    width: deviceWidth / 1.8,
                    height: deviceWidth / 1.8,
                    child: Hero(
                        tag: widget.url,
                        child: Container(
                          // padding: EdgeInsets.all(8), // Border width
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 7.0,
                                ),
                              ],
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48), // Image radius
                              child:
                                  Image.network(widget.url, fit: BoxFit.cover),
                            ),
                          ),
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                //   child: const Text(
                //     "Category",
                //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                //   ),
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text("No Transaction Yet",
                    //     style: TextStyle(
                    //         fontSize: 27, fontWeight: FontWeight.w600))

                    ListView(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      children: const [
                        ListTile(
                          title: Text("Recieved",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$50"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        ListTile(
                          title: Text("Sent",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$30"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        ListTile(
                          title: Text("Recieved",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$10"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        ListTile(
                          title: Text("Recieved",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$150"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        ListTile(
                          title: Text("Recieved",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$500"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        ListTile(
                          title: Text("Sent",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$69"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        ListTile(
                          title: Text("Sent",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          subtitle: Text("\$90"),
                          // trailing: Text("",
                          //     style:
                          //         const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
