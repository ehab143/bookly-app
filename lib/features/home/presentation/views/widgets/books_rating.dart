import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F)),
        SizedBox(width: 6.3),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 5),
        Text(
          '(254)',
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
