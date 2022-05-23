import 'package:course_app/model/course_model.dart';
import 'package:course_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  final CourseModel course;

  const CourseCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 190,
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            CustomColors.accent.withOpacity(0.5),
            CustomColors.primaryDark
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: CustomColors.primaryLight
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 105,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  "assets/images/"+widget.course.img.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(
              height: 12.0,
            ),

            SizedBox(
              width: double.infinity,
              child: Text(widget.course.title.toString(), style: const TextStyle(color: CustomColors.white, fontSize: 18),),
            ),

            const SizedBox(
              height: 8.0,
            ),

            SizedBox(
              width: double.infinity,
              child: Text(widget.course.educator.toString(), style: const TextStyle(color: CustomColors.accent, fontSize: 14),),
            ),

          ],
        ),
      ),
    );
  }
}
