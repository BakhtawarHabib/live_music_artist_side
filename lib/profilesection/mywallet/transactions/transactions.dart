import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/backarrow.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';
import 'package:live_music_artist_side/widgets/customtextfields.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text(
                    "Transactions",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: List.generate(
                    leadingicons.length,
                    (index) => Column(
                          children: [
                            ListTile(
                              leading: SvgPicture.asset(leadingicons[index]),
                              title: Text(
                                tilesnames[index],
                                style: white16stylemedium,
                              ),
                              trailing: Text(
                                amounts[index],
                                style: white16stylemedium,
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    "11 Nov 2021",
                                    style: white10textStyle,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    "12:00 PM",
                                    style: white10textStyle,
                                  )
                                ],
                              ),
                            ),
                            Divider(color: hintcolor.withOpacity(0.3))
                          ],
                        )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
