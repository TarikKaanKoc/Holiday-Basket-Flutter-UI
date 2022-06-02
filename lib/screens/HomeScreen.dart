import 'package:flutter/material.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/responsive.dart';
import 'package:holiday_basket/widgets/menu/SideMenuSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: BgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenuSection(),
                  ),
                const SizedBox(width: DefaultPadding),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
                const SizedBox(width: DefaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}