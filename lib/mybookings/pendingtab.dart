import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';

class PendingTabScreen extends StatelessWidget {
  const PendingTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(
                2,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          // Get.to(() => Studioinfo());
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 170.h,
                            decoration: BoxDecoration(
                                color: btnColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
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
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: whitecolor,
                                        width: 100,
                                        height: 50,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  "images/accepticon.svg"),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Text(
                                                "Accept",
                                                style: blacknormal14style,
                                              )
                                            ]),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          bookingorderalert(context);
                                        },
                                        child: Container(
                                          color: hintcolor,
                                          width: 100,
                                          height: 50,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    "images/rejecticon.svg"),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  "REJECT",
                                                  style: blacknormal14style,
                                                )
                                              ]),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ))),
      ),
    );
  }

  void bookingorderalert(
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
                  width: 280.w,
                  height: 268.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SvgPicture.asset("images/alertinfoicon.svg"),
                      const Icon(
                        Icons.info_outline,
                        size: 100,
                        color: Color(0xff737373),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Are you Sure to Reject Booking Order",
                        style: blackbold14style,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: hintcolor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(30)),
                                width: 100,
                                height: 50,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset("images/rejecticon.svg"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        "REJECT",
                                        style: blacknormal14style,
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: hintcolor,
                                    borderRadius: BorderRadius.circular(30)),
                                width: 100,
                                height: 50,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Cancel",
                                        style: blacknormal14style,
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: btnColor,
                              value: check,
                              onChanged: (value) {
                                setState(() {
                                  check = !check;
                                });
                              }),
                          Text("Reply him/her as not available ")
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
