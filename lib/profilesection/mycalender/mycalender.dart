import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/backarrow.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';

import 'addagenda.dart';

class MyCalenderScreen extends StatefulWidget {
  const MyCalenderScreen({Key? key}) : super(key: key);

  @override
  _MyCalenderScreenState createState() => _MyCalenderScreenState();
}

class _MyCalenderScreenState extends State<MyCalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackArrow(),
                    Text(
                      "My Calendar",
                      style: white16stylemedium,
                    ),
                    const Text("")
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40.h,
                                  width: 80.w,
                                  child: Text("11 Nov",
                                      style: black16mediumtextstyle),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/timelinearrow.png"),
                                          fit: BoxFit.cover)),
                                ),
                                Column(
                                  children: [
                                    const Icon(
                                      Icons.brightness_1,
                                      color: btnColor,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Container(
                                      color: whitecolor,
                                      height: 6.h,
                                      width: 2.w,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("  Dark Night Drums",
                                                style: white16stylemedium),
                                            Text(
                                              "Concert",
                                              style: white12fontbold,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "images/locationicon.svg",
                                              color: whitecolor,
                                            ),
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            Text(
                                              bookingclientaddress[index],
                                              style: white12fontnormal,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  "images/timeicon.svg",
                                                  color: whitecolor,
                                                  height: 15.h,
                                                  width: 15.w,
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  bookingclienttime[index],
                                                  style: white10textStyle,
                                                )
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: whitecolor),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    const Icon(
                                                      Icons.delete_forever,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                      "Delete",
                                                      style: black10textStyle,
                                                    ),
                                                    Text(
                                                      "",
                                                      style: white16stylemedium,
                                                    ),
                                                  ],
                                                ),
                                                height: 25.h,
                                                width: 70.w,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    height: 130.h,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                )
                              ],
                            ),
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => AddAgendaScreen());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      height: 80.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            "images/addicon.svg",
                            color: const Color(0xff919191),
                            height: 25.h,
                            width: 25.w,
                          ),
                          Text(
                            "Add new Agenda",
                            style: hint16style,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ])))),
    );
  }
}
