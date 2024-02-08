// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../core/asset_url/asset_url.dart';

class ProfilePicWidget extends StatelessWidget {
  ProfileState state;
  ProfilePicWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.2,
                image: AssetImage(
                  AssetUrls.KSHB_LOGO,
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: (state.officerProfile?.profilePicture == null ||
                          state.officerProfile?.profilePicture == '')
                      ? const CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(
                            AssetUrls.LOGO,
                          ),
                        )
                      : CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              state.officerProfile!.profilePicture as String),
                        ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'User ID :',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '151844',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          left: 350,
          right: 0,
          top: 200,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.green,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
