import 'package:egraha_app/presentation/core/asset_url/asset_url.dart';
import 'package:flutter/material.dart';

import '../core/themes/theme_data.dart';

class ScreenContacts extends StatelessWidget {
  const ScreenContacts({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        decoration: const BoxDecoration(
          color: APP_DRAWER_BACKGROUND_COLOR,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: APP_DRAWER_BACKGROUND_COLOR,
                    border: Border.all(
                      color: Colors.grey.shade700,
                      width: 0.1,
                    ),
                    borderRadius: P_CONTAINER_RADIUS,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade100,
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 178, 211, 238),
                            child: Icon(
                              Icons.person,
                              color: Colors.blue.shade700,
                            ),
                          ),
                          label: Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Text(
                              "Search numbers, names & more",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                          suffixIcon: const Icon(
                            // Icons.more_vert,
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              L_HEIGHT10,
              Flexible(
                child: Container(
                  //padding: const EdgeInsets.only(left: 15),
                  child: ListView.separated(
                    itemBuilder: (BuildContext ctx, int index) {
                      return Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              radius: 28,
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      AssetUrls.KSHB_LOGO,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rahul Krishna",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.home_work_rounded,
                                      size: 12,
                                      color: Colors.grey,
                                    ),
                                    L_WIDTH5,
                                    Text(
                                      "KSHB State Office, Thiruvananthapuram",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                L_HEIGHT5,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      size: 12,
                                      color: Colors.grey,
                                    ),
                                    L_WIDTH5,
                                    Text(
                                      "+91-9809521623",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: const Color.fromARGB(
                                        255, 245, 245, 245),
                                    child: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      size: 12,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext ctx, int index) {
                      return L_HEIGHT25;
                    },
                    itemCount: 60,
                  ),
                ),
              ),
              L_HEIGHT5,
            ],
          ),
        ),
      ),
    );
  }
}
