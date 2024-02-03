import 'package:egraha_app/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';

import '../../core/themes/theme_data.dart';
import 'password_widget.dart';
import 'rememberMe_widget.dart';
import 'username_widget.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Screen height for seperation
            const SizedBox(height: 20),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: SHADOW_COLOR,
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      UsernameWidget(),
                      PasswordWidget(),
                    ],
                  ),
                ),
              ],
            ),
            //Screen height for seperation
            const SizedBox(height: 20),
            //Remember me widget
            const RememberMeWidget(),
            //Screen height for seperation
            const SizedBox(height: 20),
            //Login button widget
            MaterialButton(
              onPressed: () {
                try {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenMainPage(),
                    ),
                  );
                } catch (e) {
                  print("Navigation Error: $e");
                }
              },
              height: LB_HEIGHT,
              color: LB_COLOR,
              shape: LB_BORDER,
              child: Center(
                child: Text(
                  "Login",
                  style: LB_TEXT_STYLE,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
