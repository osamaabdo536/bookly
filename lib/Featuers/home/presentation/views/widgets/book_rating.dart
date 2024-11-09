import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),),
        const SizedBox(
          width: 6.3,
        ),
        const Text('4.8',style: Styles.textStyle16,),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text('(2390)',style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600
          )),
        ),
      ],
    );
  }
}