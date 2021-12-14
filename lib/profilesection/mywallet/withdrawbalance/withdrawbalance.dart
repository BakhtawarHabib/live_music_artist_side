import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/profilesection/mywallet/mywallet.dart';
import 'package:live_music_artist_side/widgets/backarrow.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';
import 'package:live_music_artist_side/widgets/profilewidget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class WithdrawBalanceScreen extends StatefulWidget {
  const WithdrawBalanceScreen({Key? key}) : super(key: key);

  @override
  _WithdrawBalanceScreenState createState() => _WithdrawBalanceScreenState();
}

class _WithdrawBalanceScreenState extends State<WithdrawBalanceScreen> {
  bool status = false;
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color(0xff777777), Color(0xff232322)],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 270.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/withdrawcont.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackArrow(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5),
                        child: Text(
                          "Withdraw Balance",
                          style: white16stylemedium,
                        ),
                      ),
                      const Text(""),
                    ],
                  ),
                ),
                Center(child: Image.asset("images/card1.png"))
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amount",
                  style: white16stylemedium,
                ),
                Center(
                    child: Text(
                  "How much would you like to Withdraw?",
                  style: white15normal,
                )),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  style: white34mediumstyle,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.2)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.2)),
                      ),
                      focusColor: whitecolor,
                      hintText: "\$ 250.00",
                      hintStyle: white34mediumstyle),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        withdrawamout.length,
                        (index) => MaterialButton(
                              minWidth: 65.w,
                              height: 29.h,
                              shape: const StadiumBorder(),
                              color: whitecolor,
                              onPressed: () {},
                              child: Text(withdrawamout[index]),
                            ))),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: CustomBtn(
                txt: "Withdraw Now",
                onpress: () {
                  fingerprintalert(context);
                },
                height: 43.h,
                width: 172.w),
          )
        ]),
      ),
    )));
  }

  void fingerprintalert(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          bool check = true;
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              20,
            )),
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "To Initiate Withdraw Kindly Verify \nYour Identity",
                        textAlign: TextAlign.center,
                        style: black16mediumtextstyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "FINGERPRINT",
                        style: black16mediumtextstyle,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Place your finger on fingerprint on sensor until the icon become green",
                        style: fingerprinthinttext,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SvgPicture.asset("images/fingerprint.svg"),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomBtn(
                          txt: "Verify Fingerprint",
                          onpress: () {},
                          height: 43.h,
                          width: 220.w),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          pincodealert(context);
                        },
                        child: Text(
                          "Verify With PIN",
                          style: black16mediumtextstyle,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        });
  }

  void pincodealert(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          bool check = true;
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              20,
            )),
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "To Initiate Withdraw Kindly Verify \nYour Identity",
                        textAlign: TextAlign.center,
                        style: black16mediumtextstyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "PIN",
                        style: black16mediumtextstyle,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Enter Security PIN to Continue",
                        style: fingerprinthinttext,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Form(
                        key: formKey,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 30),
                            child: PinCodeTextField(
                              appContext: context,
                              pastedTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              length: 4,

                              animationType: AnimationType.fade,
                              validator: (v) {
                                if (v!.length < 3) {
                                  return "I'm from validator";
                                } else {
                                  return null;
                                }
                              },
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.circle,
                                borderRadius: BorderRadius.circular(5),
                                inactiveFillColor: hintcolor,
                                activeColor: Colors.transparent,
                                selectedFillColor: hintcolor,
                                selectedColor: Colors.transparent,
                                fieldHeight: 70,
                                fieldWidth: 40,
                                activeFillColor: Colors.white,
                              ),
                              cursorColor: Colors.black,
                              animationDuration: Duration(milliseconds: 300),
                              enableActiveFill: true,

                              errorAnimationController: errorController,
                              controller: textEditingController,
                              keyboardType: TextInputType.number,
                              // boxShadows: const [
                              //   BoxShadow(
                              //     offset: Offset(0, 1),
                              //     color: Colors.black12,
                              //     blurRadius: 10,
                              //   )
                              // ],
                              onCompleted: (v) {
                                print("Completed");
                              },
                              // onTap: () {
                              //   print("Pressed");
                              // },
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            )),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomBtn(
                          txt: "Verify PIN",
                          onpress: () {
                            // Get.to(() => const ProceedtoPaymentScreen());
                          },
                          height: 43.h,
                          width: 220.w),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Verify With FINGERPRINT",
                          style: black16mediumtextstyle,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
