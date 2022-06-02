import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:holiday_basket/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: DefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals(text: 'A la Carte Restoran'),
        buildGoals(text: 'Outdoor pool'),
        buildGoals(text: 'Waterslide'),
        buildGoals(text: '24/7 Service'),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: DefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}