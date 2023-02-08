import 'package:flutter/material.dart';
import 'package:huddle/routes/pay.dart';
import '../constant/constant.dart';
import 'package:simple_animations/simple_animations.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late double deviceWidth;
  late double deviceHeight;
  DateTime selectedDate = DateTime.now();
  var textController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(bottom: 50)),
///////////////////////////FIRST NAME /////////////////////////////////////////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (thetext) {
                                    // theSearch(thetext);
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),

                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "First Name",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
////////////////////////////////LAST NAME//////////////////////////////////////////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (thetext) {
                                    // theSearch(thetext);
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "Last Name",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //////MAIL ID///////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (thetext) {
                                    // theSearch(thetext);
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "Email",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    /////DOB/////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  controller: textController,
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: null,
                                  keyboardType: TextInputType.none,
                                  onTap: () async {
                                    await _selectDate(context);
                                    setState(() {
                                      textController.text =
                                          "${selectedDate.toLocal()}"
                                              .split(' ')[0];
                                    });
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "Date Of Birth",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///// ADDRESS //////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (thetext) {
                                    // theSearch(thetext);
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "Address",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ////MOBILE////
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (thetext) {
                                    // theSearch(thetext);
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "Phone Number",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// PASSWORD ///
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Center(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    Constants.glassShadowOpacity / 100),
                                blurRadius: Constants.glassShadowBlur * 1.0,
                                offset: Constants.kShadowOffset,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Constants.kRounded),
                            child: BackdropFilter(
                              filter: Constants.glassBlur,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Constants.kRounded),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.04)),
                                  color: Constants.glassOpacity,
                                ),
                                child: TextField(
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  textAlignVertical: TextAlignVertical.center,
                                  cursorColor: const Color(0xFF3cb9cd),
                                  autofocus: false,
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (thetext) {
                                    // theSearch(thetext);
                                  },
                                  decoration: InputDecoration(
                                    isCollapsed: true,
                                    // suffixIcon: const Icon(
                                    //     Icons.music_note_rounded,
                                    //     color: Colors.white),
                                    prefixIcon: const Material(
                                      color: Colors.transparent,
                                      child: Icon(
                                        Icons.ac_unit_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    hintStyle:
                                        TextStyle(color: Colors.grey[350]),
                                    hintText: "Password",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: deviceWidth / 4,
                      height: deviceWidth / 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Constants.contrast, // foreground
                        ),
                        child: Text("Proceed",
                            style: TextStyle(
                              fontSize: deviceWidth / 25,
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Pay()));
                        },
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 100))
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
