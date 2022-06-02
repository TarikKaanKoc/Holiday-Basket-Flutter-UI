import 'package:flutter/material.dart';
import 'package:holiday_basket/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Address',
          text: 'Antalya/Bodrum',
        ),
        buildContactInfo(
          title: 'Country',
          text: 'Turkey',
        ),
        buildContactInfo(
          title: 'Email',
          text: 'tarikkaankoc@gmail.com',
        ),
        buildContactInfo(
          title: 'Mobile',
          text: '+90 555 666 77 88',
        ),
        buildContactInfo(
          title: 'Website',
          text: 'example@website.com',
        ),
      ],
    );
  }
  
  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: const TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}