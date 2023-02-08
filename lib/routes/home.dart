import 'package:flutter/material.dart';
import 'package:huddle/routes/login.dart';
import 'package:huddle/routes/sign_up.dart';

import '../constant/constant.dart';
import 'package:simple_animations/simple_animations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: Hero(
                    tag: "Fox",
                    child: SizedBox(
                      width: deviceWidth / 1.8,
                      height: deviceWidth / 1.8,
                      child: Image.asset('assets/images/logo.png',
                          fit: BoxFit.contain),
                    ),
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
                  children: [
                    // SizedBox(
                    //   width: deviceWidth / 1.8,
                    //   height: deviceWidth / 7,
                    //   child: ElevatedButton(
                    //     child: Text("HANDICAPPED",
                    //         style: TextStyle(
                    //           fontSize: deviceWidth / 25,
                    //         )),
                    //     onPressed: () {
                    //       // Navigator.push(
                    //       //     context,
                    //       //     MaterialPageRoute(
                    //       //         builder: (_) => const BookingLocation()));
                    //     },
                    //   ),
                    // ),

                    const Text("FOX PAY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            fontFamily: "League")),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 10, right: 10),
                    //   height: 100,
                    //   width: double.infinity,
                    //   color: Colors.transparent,
                    //   child: Center(
                    //     child: Container(
                    //       height: 60,
                    //       decoration: BoxDecoration(
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Colors.black.withOpacity(
                    //                 Constants.glassShadowOpacity / 100),
                    //             blurRadius: Constants.glassShadowBlur * 1.0,
                    //             offset: Constants.kShadowOffset,
                    //           ),
                    //         ],
                    //         borderRadius:
                    //             BorderRadius.circular(Constants.kRounded),
                    //       ),
                    //       child: ClipRRect(
                    //         borderRadius:
                    //             BorderRadius.circular(Constants.kRounded),
                    //         child: BackdropFilter(
                    //           filter: Constants.glassBlur,
                    //           child: Container(
                    //             alignment: Alignment.center,
                    //             decoration: BoxDecoration(
                    //               borderRadius:
                    //                   BorderRadius.circular(Constants.kRounded),
                    //               border: Border.all(
                    //                   color: Colors.white.withOpacity(0.04)),
                    //               color: Constants.glassOpacity,
                    //             ),
                    //             child: TextField(
                    //               keyboardType: TextInputType.number,
                    //               textAlignVertical: TextAlignVertical.center,
                    //               cursorColor: const Color(0xFF3cb9cd),
                    //               autofocus: false,
                    //               style: const TextStyle(color: Colors.white),
                    //               onChanged: (thetext) {
                    //                 // theSearch(thetext);
                    //               },
                    //               decoration: InputDecoration(
                    //                 isCollapsed: true,
                    //                 // suffixIcon: const Icon(
                    //                 //     Icons.music_note_rounded,
                    //                 //     color: Colors.white),
                    //                 prefixIcon: const Material(
                    //                   color: Colors.transparent,
                    //                   child: Icon(
                    //                     Icons.ac_unit_outlined,
                    //                     color: Colors.white,
                    //                   ),
                    //                 ),

                    //                 border: const OutlineInputBorder(),
                    //                 enabledBorder: const OutlineInputBorder(
                    //                   borderSide:
                    //                       BorderSide(color: Colors.transparent),
                    //                 ),
                    //                 focusedBorder: const OutlineInputBorder(
                    //                     borderSide: BorderSide(
                    //                         color: Colors.transparent)),
                    //                 hintStyle:
                    //                     TextStyle(color: Colors.grey[350]),
                    //                 hintText: "Phone Number",
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text("Make Things Happen",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25)),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 10, right: 10),
                    //   height: 100,
                    //   width: double.infinity,
                    //   color: Colors.transparent,
                    //   child: Center(
                    //     child: Container(
                    //       height: 60,
                    //       decoration: BoxDecoration(
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Colors.black.withOpacity(
                    //                 Constants.glassShadowOpacity / 100),
                    //             blurRadius: Constants.glassShadowBlur * 1.0,
                    //             offset: Constants.kShadowOffset,
                    //           ),
                    //         ],
                    //         borderRadius:
                    //             BorderRadius.circular(Constants.kRounded),
                    //       ),
                    //       child: ClipRRect(
                    //         borderRadius:
                    //             BorderRadius.circular(Constants.kRounded),
                    //         child: BackdropFilter(
                    //           filter: Constants.glassBlur,
                    //           child: Container(
                    //             alignment: Alignment.center,
                    //             decoration: BoxDecoration(
                    //               borderRadius:
                    //                   BorderRadius.circular(Constants.kRounded),
                    //               border: Border.all(
                    //                   color: Colors.white.withOpacity(0.04)),
                    //               color: Constants.glassOpacity,
                    //             ),
                    //             child: TextField(
                    //               obscureText: true,
                    //               enableSuggestions: false,
                    //               autocorrect: false,
                    //               textAlignVertical: TextAlignVertical.center,
                    //               cursorColor: const Color(0xFF3cb9cd),
                    //               autofocus: false,
                    //               style: const TextStyle(color: Colors.white),
                    //               onChanged: (thetext) {
                    //                 // theSearch(thetext);
                    //               },
                    //               decoration: InputDecoration(
                    //                 isCollapsed: true,
                    //                 // suffixIcon: const Icon(
                    //                 //     Icons.music_note_rounded,
                    //                 //     color: Colors.white),
                    //                 prefixIcon: const Material(
                    //                   color: Colors.transparent,
                    //                   child: Icon(
                    //                     Icons.ac_unit_outlined,
                    //                     color: Colors.white,
                    //                   ),
                    //                 ),
                    //                 border: const OutlineInputBorder(),
                    //                 enabledBorder: const OutlineInputBorder(
                    //                   borderSide:
                    //                       BorderSide(color: Colors.transparent),
                    //                 ),
                    //                 focusedBorder: const OutlineInputBorder(
                    //                     borderSide: BorderSide(
                    //                         color: Colors.transparent)),
                    //                 hintStyle:
                    //                     TextStyle(color: Colors.grey[350]),
                    //                 hintText: "Password",
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // TextButton(
                        //   onPressed: () {
                        //     // Navigator.push(
                        //     // context,
                        //     // MaterialPageRoute(
                        //     //     builder: (context) => const LicensesPage()),
                        //     // );
                        //   },
                        //   style: ButtonStyle(
                        //       overlayColor:
                        //           MaterialStateProperty.all(Colors.white30)),
                        //   child: Text(
                        //     "Forgot Password?",
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: deviceWidth / 34,
                        //     ),
                        //   ),
                        // ),
                        Padding(
                            padding: EdgeInsets.only(
                                right: deviceWidth / 18, bottom: 80))
                      ],
                    ),

                    SizedBox(
                      width: deviceWidth / 4,
                      height: deviceWidth / 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Constants.contrast, // foreground
                        ),
                        child: Text("Login",
                            style: TextStyle(
                              fontSize: deviceWidth / 25,
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Login()));
                        },
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),

                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        //     builder: (context) => const LicensesPage()),
                        // );
                      },
                      style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.white30)),
                      child: Text(
                        "Not A User?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: deviceWidth / 32,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 0)),

                    SizedBox(
                      width: deviceWidth / 4,
                      height: deviceWidth / 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Constants.contrast, // foreground
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SignUp()));
                        },
                        child: Text("Sign Up",
                            style: TextStyle(
                              fontSize: deviceWidth / 25,
                            )),
                      ),
                    ),
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
