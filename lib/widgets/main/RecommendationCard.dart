import 'package:flutter/material.dart';
import 'package:holiday_basket/models/Recommendation.dart';
import '../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(DefaultPadding),
      color: SecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          const SizedBox(height: DefaultPadding / 2),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}