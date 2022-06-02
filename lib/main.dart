import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/widgets/main/MainSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: BgColor,
        canvasColor: BgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: BodyTextColor),
              bodyText2: TextStyle(color: BodyTextColor),
            ),
      ),
      home: MainSection(),
    );
  }
}