import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/strings.dart';
import 'package:live_music_artist_side/constants/styles.dart';
import 'package:textfield_tags/textfield_tags.dart';

class CustomTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomTextField({required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 16),
                        hintText: hinttext,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class EmailNotChangeCustomTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  EmailNotChangeCustomTextField(
      {required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    readOnly: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 16),
                        hintText: hinttext,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: BoxDecoration(
                color: const Color(0xffE5E5E5),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(() => SearchScreen());
      },
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: btnColor, width: 2)),
        child: TextFormField(
          readOnly: true,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search artist, musician, bands',
              filled: true,
              fillColor: Colors.grey[200]),
        ),
      ),
    );
  }
}

class CustomBookingTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  CustomBookingTextField({required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: hinttext,
                        hintStyle: hint16style,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PriceNotChangeTextField extends StatelessWidget {
  String hinttext;
  String containericon;
  PriceNotChangeTextField(
      {required this.containericon, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    readOnly: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        hintStyle: hint16style,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        hintText: hinttext,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(containericon),
            ),
            decoration: const BoxDecoration(
              color: Color(0xffE5E5E5),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AboutTextField extends StatelessWidget {
  const AboutTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    maxLines: 8,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        hintText: abouttext,
                        hintStyle: black16normalstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(
                "images/filetexticon.svg",
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewTextField extends StatelessWidget {
  const ReviewTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 20),
                        hintText: "Write review here...",
                        hintStyle: reviewhinttextstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(
                "images/profilepic.png",
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Descriptiontxtfield extends StatelessWidget {
  const Descriptiontxtfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              // First child (child 1)
              width: double.infinity,
              child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                    primaryColorDark: Colors.red,
                  ),
                  child: TextFormField(
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        focusColor: btnColor,
                        fillColor: btnColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        hintText: descriptiontext,
                        hintStyle: black16normalstyle,
                        focusedBorder: InputBorder.none,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.all(6)),
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset(
                "images/filetexticon.svg",
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: btnColor),
              boxShadow: const [
                BoxShadow(
                  color: hintcolor,
                  blurRadius: 0.4, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    0.0, // vertical, move down 10
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextChip extends StatefulWidget {
  @override
  _TextChipState createState() => _TextChipState();
}

class _TextChipState extends State<TextChip> {
  final _focus = FocusNode();
  final _controller = TextEditingController();
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return InputChip(
      onPressed: () => FocusScope.of(context).requestFocus(_focus),
      label: Stack(
        alignment: Alignment.centerRight,
        overflow: Overflow.visible,
        children: [
          Text(_text),
          Positioned(
            right: 0,
            child: SizedBox(
              width: 4, // we only want to show the blinking caret
              child: TextField(
                scrollPadding: EdgeInsets.all(0),
                focusNode: _focus,
                controller: _controller,
                style: TextStyle(color: Colors.transparent),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                onChanged: (_) {
                  setState(() {
                    _text = _controller.text;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChipssTxtField extends StatelessWidget {
  const ChipssTxtField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 360),
            child: IntrinsicWidth(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.all(6),
                child: TextFieldTags(
                  //initialTags: ["better", "lovely"],
                  textSeparators: [" vcdv", ".", ","],
                  tagsStyler: TagsStyler(
                    showHashtag: false,
                    tagMargin: const EdgeInsets.only(left: 60.0),
                    tagCancelIcon:
                        Icon(Icons.cancel, size: 15.0, color: Colors.white),
                    tagCancelIconPadding: EdgeInsets.only(left: 4.0, top: 2.0),
                    tagPadding: EdgeInsets.only(
                        top: 2.0, bottom: 4.0, left: 8.0, right: 4.0),
                    tagDecoration: BoxDecoration(
                      color: btnColor,
                      border: Border.all(
                        color: btnColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    tagTextStyle: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                  textFieldStyler: TextFieldStyler(
                    contentPadding: EdgeInsets.only(bottom: 20),
                    hintText: "",
                    isDense: false,
                    helperText: "",
                    textFieldFocusedBorder: InputBorder.none,
                    textFieldBorder: InputBorder.none,
                  ),
                  onDelete: (tag) {},
                  onTag: (tag) {},
                  validator: (String tag) {
                    if (tag.length > 15) {
                      return "hey that is too much";
                    } else if (tag.isEmpty) {
                      return "enter something";
                    }

                    return null;
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 60,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: SvgPicture.asset(
                  "images/musicicon.svg",
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: btnColor),
                boxShadow: const [
                  BoxShadow(
                    color: hintcolor,
                    blurRadius: 0.4, // has the effect of softening the shadow
                    spreadRadius: 1.0, // has the effect of extending the shadow
                    offset: Offset(
                      1.0, // horizontal, move right 10
                      0.0, // vertical, move down 10
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
