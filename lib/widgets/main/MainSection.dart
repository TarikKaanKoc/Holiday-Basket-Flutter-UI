import 'package:flutter/material.dart';
import 'package:holiday_basket/screens/HomeScreen.dart';
import 'package:holiday_basket/widgets/main/HomeBanner.dart';
import 'package:holiday_basket/widgets/main/IconInfo.dart';
import 'package:holiday_basket/widgets/main/Projects.dart';

import 'Recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: const [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}