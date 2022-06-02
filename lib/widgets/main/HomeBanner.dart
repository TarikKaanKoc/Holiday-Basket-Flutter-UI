import 'package:flutter/material.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: BannerDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Make Your Early Reservation\nNow!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: DefaultPadding),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: DefaultPadding * 2,
                        vertical: DefaultPadding),
                    backgroundColor: PrimaryColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'CONTACT US',
                    style: TextStyle(color: BannerDarkColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}