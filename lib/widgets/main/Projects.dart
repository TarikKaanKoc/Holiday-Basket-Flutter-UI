import 'package:flutter/material.dart';
import 'package:holiday_basket/constants.dart';
import 'package:holiday_basket/models/projects.dart';
import 'package:holiday_basket/widgets/main/ProjectCard.dart';
import 'package:holiday_basket/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Hotels',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProjects[index]),
          ),
          tablet: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProjects[index]),
          ),
          mobileLarge: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProjects[index]),
          ),
          mobile: buildGridView(
            itemCount: demoProjects.length,
            crossAxsitCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCard(project: demoProjects[index]),
          ),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxsitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: DefaultPadding,
          mainAxisSpacing: DefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}