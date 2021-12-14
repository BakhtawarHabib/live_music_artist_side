import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/backarrow.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';
import 'package:live_music_artist_side/widgets/customtextfields.dart';

class AddAgendaScreen extends StatefulWidget {
  const AddAgendaScreen({Key? key}) : super(key: key);

  @override
  _AddAgendaScreenState createState() => _AddAgendaScreenState();
}

class _AddAgendaScreenState extends State<AddAgendaScreen> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKeyy = GlobalKey<ScaffoldState>();
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
                    "New Agenda",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  CustomBookingTextField(
                    containericon: 'images/eventicon.svg',
                    hinttext: 'Event Title',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/timeicon.svg',
                    hinttext: 'Time (09:30 PM)',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/calendericon.svg',
                    hinttext: 'Date (20/11/2021)',
                  ),
                  CustomBookingTextField(
                    containericon: 'images/locationicon.svg',
                    hinttext: 'Location (Brooklyn)',
                  ),
                  const AboutTextField(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomBtn(
                  txt: "Save to Calendar ",
                  onpress: () {
                    // Get.to(() => const ProceedtoPaymentScreen());
                  },
                  height: 43.h,
                  width: 172.w)
            ],
          ),
        ),
      )),
    );
  }
}
