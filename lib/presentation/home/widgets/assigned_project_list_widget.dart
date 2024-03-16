import 'package:egraha_app/presentation/project_details/screen_project_details.dart';
import 'package:flutter/material.dart';

import '../../core/asset_url/asset_url.dart';
import '../../core/themes/theme_data.dart';

class AssignedProjectListWidget extends StatelessWidget {
  const AssignedProjectListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 230,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, int index) {
          return Column(
            children: [
              Container(
                width: 130,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: P_CONTAINER_RADIUS,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AssetUrls.NOTIFICATION_LOGO,
                    ),
                  ),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenProjectDetails(),
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Project $index",
                style: const TextStyle(
                  fontFamily: "Cormorant",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext ctx, int index) {
          return L_WIDTH5;
        },
        itemCount: 10,
      ),
    );
  }
}
