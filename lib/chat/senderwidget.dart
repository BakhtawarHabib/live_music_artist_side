import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_music_artist_side/constants/colors.dart';
import 'package:live_music_artist_side/constants/styles.dart';

class SendedMessageWidget extends StatelessWidget {
  final String content;
  final String time;

  SendedMessageWidget({
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                right: 8.0, left: 50.0, top: 4.0, bottom: 4.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(0)),
              child: Container(
                color: btnColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 23.0, top: 8.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(content, style: white15normal)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            time,
            style: timetextStyle,
          ),
        ),
      ],
    );
  }
}
