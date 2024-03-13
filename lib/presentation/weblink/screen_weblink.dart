import 'package:egraha_app/presentation/core/asset_url/asset_url.dart';
import 'package:egraha_app/presentation/core/themes/theme_data.dart';
import 'package:flutter/material.dart';

import '../core/global_widgets/appbar_global.dart';

class ScreenWeblink extends StatelessWidget {
  const ScreenWeblink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Websites',
          widgets: const SizedBox(),
        ),
      ),
      body: Column(
        children: [
          L_HEIGHT10,
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Text(
              'Most popular government websites.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          L_HEIGHT20,
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        bottom: 30,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/web_link$index.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
