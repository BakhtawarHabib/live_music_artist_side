import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:live_music_artist_side/bottomnavigation/bottomnavigation.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/backarrow.dart';
import 'package:live_music_artist_side/widgets/custombtn.dart';
import 'package:live_music_artist_side/widgets/customtextfields.dart';
import 'package:live_music_artist_side/widgets/editprofileavatar.dart';
import 'package:live_music_artist_side/widgets/horizantaldivider.dart';
import 'package:textfield_tags/textfield_tags.dart';

class MakeGroupProfile extends StatefulWidget {
  const MakeGroupProfile({Key? key}) : super(key: key);

  @override
  _MakeGroupProfileState createState() => _MakeGroupProfileState();
}

class _MakeGroupProfileState extends State<MakeGroupProfile> {
  bool _passwordVisible = false;
  int selectedRadio = 1;
  int _value = 6;
  @override
// ignore: must_call_super
  void initState() {
    _passwordVisible = false;
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackArrow(),
                  Text(
                    "Profile",
                    style: white16stylemedium,
                  ),
                  const Text("")
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  const EditProfileAvatar(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Group Cover Photo",
                    style: normaltextStylefont,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    containericon: 'images/groupicon.svg',
                    hinttext: 'Group Name',
                  ),
                  CustomTextField(
                    containericon: 'images/rider1.svg',
                    hinttext: 'Rider 1 Backstage',
                  ),
                  CustomTextField(
                    containericon: 'images/rider2.svg',
                    hinttext: 'Rider 2 Front PA',
                  ),
                  CustomTextField(
                    containericon: 'images/musicteacher.svg',
                    hinttext: 'Rider 3 Lights',
                  ),
                  CustomTextField(
                    containericon: 'images/numbersign.svg',
                    hinttext: 'Number of members',
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Members",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/img1.png"),
                          maxRadius: 30,
                        ),
                      ),
                      Text(
                        "William",
                        style: white12fontnormal,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/img2.png"),
                          maxRadius: 30,
                        ),
                      ),
                      Text(
                        "James Dude",
                        style: white12fontnormal,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/artist2.png"),
                          maxRadius: 30,
                        ),
                      ),
                      Text(
                        "Scarlet",
                        style: white12fontnormal,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            "images/addusericon.svg",
                            height: 40,
                          )),
                      Text("Add more", style: smalltextStylefontgrey),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "images/uploadphoto.svg",
                  ),
                  Text(
                    "And",
                    style: hint10textStyle,
                  ),
                  SvgPicture.asset(
                    "images/uploadvideo.svg",
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Or ",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              CustomTextField(
                containericon: 'images/youtubelink.svg',
                hinttext: 'YouTube / Vimeo Video Link',
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Description",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              Descriptiontxtfield(),
              ChipssTxtField(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Write music genre and press comma to add",
                  style: white12textStyle,
                ),
              ),
              Center(
                child: MaterialButton(
                  color: whitecolor,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Text(
                    "€ 4000",
                    style: black12textStyle,
                  ),
                ),
              ),
              Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  divisions: 12,
                  activeColor: btnColor,
                  inactiveColor: hintcolor,
                  label: '',
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "€ 50",
                    style: white12fontbold,
                  ),
                  Text(
                    "€ 10,000",
                    style: white12fontbold,
                  )
                ],
              ),
              Center(
                  child: CustomBtn(
                      txt: "Save",
                      onpress: () {
                        Get.offAll(() => Bottomnavigation());
                      },
                      height: 40.h,
                      width: 175.w)),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
