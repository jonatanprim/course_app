import 'package:course_app/model/educator_model.dart';
import 'package:course_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class EducatorCard extends StatefulWidget {
  EducatorModel educator;

  EducatorCard({
    Key? key,
    required this.educator,
  }) : super(key: key);

  @override
  _EducatorCardState createState() => _EducatorCardState();
}

class _EducatorCardState extends State<EducatorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 180,
      margin: EdgeInsets.only(right: 12.0),
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
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
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            color: CustomColors.primaryLight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  "assets/images/"+widget.educator.img.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              widget.educator.name.toString(),
              style: TextStyle(color: CustomColors.white, fontSize: 18),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              widget.educator.courseCount.toString(),
              style: TextStyle(color: CustomColors.accent, fontSize: 14),
            ),
            SizedBox(
              height: 8.0,
            ),
            Icon(
              Icons.expand_more,
              color: CustomColors.accent,
            ),
          ],
        ),
      ),
    );
  }
}
