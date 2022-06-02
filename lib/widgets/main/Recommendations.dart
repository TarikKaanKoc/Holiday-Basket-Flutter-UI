import 'package:flutter/material.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/models/Recommendation.dart';
import 'package:holiday_basket/widgets/main/RecommendationCard.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: DefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: DefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: DefaultPadding),
                  child: RecommendationCard(
                    recommendation: demoRecommendations[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}