import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:live_music_artist_side/widgets/customchip.dart';
import 'package:live_music_artist_side/widgets/horizantaldivider.dart';
import 'package:live_music_artist_side/widgets/iconbutton.dart';

class Studioinfo extends StatefulWidget {
  @override
  _StudioinfoState createState() => _StudioinfoState();
}

class _StudioinfoState extends State<Studioinfo>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  int currentPos = 0;
  final controller = CarouselController();
  List<int> list = [1, 2, 3, 4, 5];
  List<String> listPaths = [
    "images/slider.png",
    "images/girlbackground.png",
  ];
  CarouselController? carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.only(),
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
              CarouselSlider.builder(
                itemCount: listPaths.length,
                carouselController: carouselController,
                options: CarouselOptions(
                  viewportFraction: 1.1,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  //scrollDirection: Axis.vertical,

                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        currentPos = index;
                      },
                    );
                  },
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(0),
                    child: ClipRRect(
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(bookingclientpics[index]),
                                  maxRadius: 50,
                                ),
                                Text(
                                  "William Smith",
                                  style: white16stylemedium,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "images/locationicon.svg",
                                      color: whitecolor,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "New York United States",
                                      style: white12fontnormal,
                                    ),
                                  ],
                                ),
                                IconBtn(
                                  height: 40.w,
                                  onpress: () {},
                                  width: 153.w,
                                  image: 'images/chat.svg',
                                  txt: 'Message',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  carouselController!.previousPage();
                                },
                                child: SvgPicture.asset(
                                  "images/leftarrow.svg",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  carouselController!.nextPage();
                                },
                                child: SvgPicture.asset(
                                  "images/rightarrow.svg",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _controller,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'Cover Video',
                    ),
                    Tab(
                      text: 'Cover Picture',
                    ),
                  ],
                ),
              ),
              Container(
                height: 200.0,
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("images/group1.png"),
                                fit: BoxFit.cover)),
                        child: const Icon(Icons.play_arrow,
                            size: 80, color: whitecolor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("images/group1.png"),
                                fit: BoxFit.cover)),
                        child: const Icon(Icons.play_arrow,
                            size: 80, color: whitecolor),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HorizntalDivider(),
                  Text(
                    "Group Members",
                    style: white14stylemedium,
                  ),
                  const HorizntalDivider(),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    4,
                    (index) => Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 25.h,
                              backgroundImage: AssetImage(artistimages[index]),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              membersname[index],
                              style: white12fontnormal,
                            )
                          ],
                        )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "About",
                  style: white14stylemedium,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  bigtext,
                  style: white14stylemedium,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
      ))),
    );
  }
}
