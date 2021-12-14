import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/studioinformation/studioinfor.dart';

import 'mybookingdetails.dart';

class ScheduledTabScreen extends StatelessWidget {
  const ScheduledTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => Studioinfo());
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 115.h,
                            decoration: BoxDecoration(
                                color: btnColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            bookingclientpics[index]),
                                        maxRadius: 30,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            bookingclientnames[index],
                                            style: white20stylemedium,
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
                                            height: 20.h,
                                          ),
                                          Container(
                                            color: Colors.transparent,
                                            width: 275.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                          "images/calendericon.svg",
                                                          color: whitecolor,
                                                          height: 15.h,
                                                          width: 15.w,
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text(
                                                          bookingclientdates[
                                                              index],
                                                          style:
                                                              white10textStyle,
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 5.h,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
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
                                                          bookingclienttime[
                                                              index],
                                                          style:
                                                              white10textStyle,
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: whitecolor),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        SvgPicture.asset(
                                                            "images/mapmarkicon.svg"),
                                                        Text(
                                                          "View on Map",
                                                          style: black15normal,
                                                        ),
                                                        Text(
                                                          "",
                                                          style:
                                                              white16stylemedium,
                                                        ),
                                                      ],
                                                    ),
                                                    height: 30.h,
                                                    width: 140.w,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ))),
      ),
    );
  }
}
