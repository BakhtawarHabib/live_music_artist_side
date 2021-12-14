import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/backarrow.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';
import 'package:live_music_artist_side/widgets/customtextfields.dart';
import 'package:live_music_artist_side/widgets/horizantaldivider.dart';
import 'package:live_music_artist_side/widgets/musicionswidget.dart';

class MyBookingDetailScreen extends StatefulWidget {
  const MyBookingDetailScreen({Key? key}) : super(key: key);

  @override
  _MyBookingDetailScreenState createState() => _MyBookingDetailScreenState();
}

class _MyBookingDetailScreenState extends State<MyBookingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
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
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackArrow(),
                  Text(
                    "My Booking",
                    style: white16stylemedium,
                  ),
                  const Text(""),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const MusicionWidget(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fire Arcade Event 2021",
                        style: white22boldstyle,
                      ),
                      Text(
                        "By William Jack Smith",
                        style: white14stylemedium,
                      )
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: const StadiumBorder(),
                    color: Colors.black,
                    child: Text(
                      "Concert",
                      style: white14stylemedium,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  bookingdetailicons.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  bookingdetailicons[index],
                                  height: 20,
                                  color: btnColor,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  bookingdetailnames[index],
                                  style: white14stylemedium,
                                )
                              ],
                            ),
                            Text(
                              bookingiconsdetails[index],
                              style: white13style,
                            ),
                          ],
                        ),
                        Divider(
                          color: hintcolor.withOpacity(0.6),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: btnColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "images/mapmarkicon.svg",
                        height: 25.h,
                        width: 25.w,
                        color: whitecolor,
                      ),
                      Text(
                        "Show on Map",
                        style: white20stylemedium,
                      ),
                      Text(
                        "",
                        style: white16stylemedium,
                      ),
                    ],
                  ),
                  height: 42.h,
                  width: 245.w,
                ),
              ))
            ],
          ),
        ),
      )),
    );
  }
}
