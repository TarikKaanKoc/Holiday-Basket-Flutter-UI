import 'package:flutter/material.dart';
import '../../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: SecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            const Image(
              image: AssetImage('assets/images/holidayLogo.png'),
              width: 100.0,
            ),
            Spacer(),
            Text(
              'Holiday Basket',
              style: Theme.of(context).textTheme.subtitle2, 
      
            ),
            const Text(
              'If you have a holiday reason,\n you have a holiday basket! ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}