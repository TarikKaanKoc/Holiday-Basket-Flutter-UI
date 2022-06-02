import 'package:flutter/material.dart';
import 'package:holiday_basket/models/projects.dart';
import '../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DefaultPadding),
      color: SecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: DefaultPadding),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: DefaultPadding),
          Expanded(
            child: Text(
              project.description!,
              style: const TextStyle(height: 1.5),
            ),
          ),
          const SizedBox(height: DefaultPadding),
          TextButton(
              onPressed: () {},
              child: const Text(
                'More info >',
                style: TextStyle(color: PrimaryColor),
              ))
        ],
      ),
    );
  }
}