import 'package:flutter/material.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        text: '9241+',
                        label: 'Client',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.location_on,
                        text: '139+',
                        label: 'Hotel',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: DefaultPadding * 3),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.public,
                        text: '30+',
                        label: 'City',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.star,
                        text: '13k+',
                        label: 'Stars',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                  context: context,
                  icon: Icons.supervisor_account,
                  text: '67+',
                  label: 'clients',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.location_on,
                  text: '139+',
                  label: 'Projects',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.public,
                  text: '30+',
                  label: 'Countries',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.star,
                  text: '13k+',
                  label: 'Stars',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, size: 50.0),
        SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: PrimaryColor, fontSize: 30),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}