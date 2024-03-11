import 'package:flutter/material.dart';

import '../core/asset_url/asset_url.dart';
import '../core/global_widgets/appbar_global.dart';

// class ScreenNotification extends StatelessWidget {
//   const ScreenNotification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(60.0),
//           child: AppBarGlobal(
//             appBarTitle: 'Notifications',
//             widgets: const SizedBox(),
//           ),
//         ),
//         body: ListView(
//           children: [
//             Container(
//               width: double.infinity,
//               height: (MediaQuery.of(context).size.height / 4) - 10,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: AssetImage(AssetUrls.NOTIFICATION_LOGO),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: const BoxDecoration(color: Colors.white),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Row(
//                       children: [
//                         Icon(
//                           Icons.maps_home_work_rounded,
//                           size: 15,
//                         ),
//                         SizedBox(width: 5),
//                         Text(
//                           "Swapnakoodu",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 6),
//                     const Text(
//                       "പാവപ്പെട്ട ജനങ്ങൾക്ക് വേണ്ടി സർക്കാർ നടത്തുന്ന ഒരു ഭവന നിർമ്മാണ പദ്ധതി",
//                       style: TextStyle(
//                         fontSize: 12,
//                       ),
//                     ),
//                     const Text(
//                       "32 Nos, 8 Cr",
//                       style: TextStyle(
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     const Row(
//                       children: [
//                         Icon(
//                           Icons.location_on_sharp,
//                           size: 15,
//                         ),
//                         SizedBox(width: 5),
//                         Expanded(
//                           flex: 8,
//                           child: Text(
//                             "Vellayambalam, Thiruvananthapuram",
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ),
//                         //Text("Vellayambalam, Thiruvananthapuram",style: TextStyle(fontSize: 12),),
//                         Expanded(
//                           flex: 2,
//                           child: Text(
//                             "02-Jan-2024",
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         )
//                       ],
//                     ),
//                     const Divider(
//                       thickness: 1,
//                       color: Color.fromARGB(255, 214, 214, 214),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10),
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.3),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: const Offset(0, 1),
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Risk Details",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.person,
//                                   size: 15,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Expanded(
//                                   flex: 8,
//                                   child: Text(
//                                     "Akshay Ashok A",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     "15-Feb-2024",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 8,
//                             ),
//                             Text(
//                               "Construction process stopped due to residential people involvement.",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10),
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.3),
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: const Offset(0, 1),
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Remark Details",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             //EE Remark
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Text(
//                               "EE Remark",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 13,
//                               ),
//                             ),
//                             Divider(
//                               thickness: 1,
//                               color: Color.fromARGB(255, 214, 214, 214),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.person,
//                                   size: 15,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Expanded(
//                                   flex: 8,
//                                   child: Text(
//                                     "Sabu K Sadhasivan",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     "05-Mar-2024",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 8,
//                             ),
//                             Text(
//                               "Contact with the local police.",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                             //RE Remark
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Text(
//                               "RE Remark",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 13,
//                               ),
//                             ),
//                             Divider(
//                               thickness: 1,
//                               color: Color.fromARGB(255, 214, 214, 214),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.person,
//                                   size: 15,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Expanded(
//                                   flex: 8,
//                                   child: Text(
//                                     "Manjula KP",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     "06-Mar-2024",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 8,
//                             ),
//                             Text(
//                               "Kindly contact LP & Local politicians.",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                             //CE Remark
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Text(
//                               "CE Remark",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 13,
//                               ),
//                             ),
//                             Divider(
//                               thickness: 1,
//                               color: Color.fromARGB(255, 214, 214, 214),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.person,
//                                   size: 15,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Expanded(
//                                   flex: 8,
//                                   child: Text(
//                                     "Hari",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     "07-Mar-2024",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 8,
//                             ),
//                             Text(
//                               "Issue reported to the KSHB commissioner.",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                             //KSHB Secretary
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Text(
//                               "Secretary Remark",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 13,
//                               ),
//                             ),
//                             Divider(
//                               thickness: 1,
//                               color: Color.fromARGB(255, 214, 214, 214),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.person,
//                                   size: 15,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Expanded(
//                                   flex: 8,
//                                   child: Text(
//                                     "Rahul Krishna",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 2,
//                                   child: Text(
//                                     "08-Mar-2024",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             SizedBox(
//                               height: 8,
//                             ),
//                             Text(
//                               "Issue solved.",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 15)
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
// }

class ScreenNotificationDetails extends StatelessWidget {
  const ScreenNotificationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double quarterHeight = screenHeight / 4;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: quarterHeight + 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetUrls.NOTIFICATION_LOGO),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight - (quarterHeight + 80),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.maps_home_work_rounded,
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Swapnakoodu",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "പാവപ്പെട്ട ജനങ്ങൾക്ക് വേണ്ടി സർക്കാർ നടത്തുന്ന ഒരു ഭവന നിർമ്മാണ പദ്ധതി",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const Text(
                            "32 Nos, 8 Cr",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on_sharp,
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                flex: 8,
                                child: Text(
                                  "Vellayambalam, Thiruvananthapuram",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "02-Jan-2024",
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 214, 214, 214),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Risk Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        flex: 8,
                                        child: Text(
                                          "Akshay Ashok A",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "15-Feb-2024",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Construction process stopped due to residential people involvement.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Remark Details",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  //EE Remark
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "EE Remark",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color.fromARGB(255, 214, 214, 214),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        flex: 8,
                                        child: Text(
                                          "Sabu K Sadhasivan",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "05-Mar-2024",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Contact with the local police.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  //RE Remark
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "RE Remark",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color.fromARGB(255, 214, 214, 214),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        flex: 8,
                                        child: Text(
                                          "Manjula KP",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "06-Mar-2024",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Kindly contact LP & Local politicians.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  //CE Remark
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "CE Remark",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color.fromARGB(255, 214, 214, 214),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        flex: 8,
                                        child: Text(
                                          "Hari",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "07-Mar-2024",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Issue reported to the KSHB commissioner.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  //KSHB Secretary
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Secretary Remark",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color.fromARGB(255, 214, 214, 214),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        flex: 8,
                                        child: Text(
                                          "Rahul Krishna",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "08-Mar-2024",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Issue solved.",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
