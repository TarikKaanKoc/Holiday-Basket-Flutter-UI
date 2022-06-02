import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/widgets/menu/Logo.dart';

import 'ContactInfo.dart';
import 'Goals.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(DefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(height: DefaultPadding),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(width: DefaultPadding / 2),
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: DefaultPadding * 2),
                      color: SecondaryColor,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/dribble.svg'),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}