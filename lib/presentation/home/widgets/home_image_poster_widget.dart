import 'package:flutter/material.dart';

class HomeImagePosterWidget extends StatelessWidget {
  const HomeImagePosterWidget({
    super.key,
    required this.imageIndexChangeNotifier,
    required this.images,
  });

  final ValueNotifier<int> imageIndexChangeNotifier;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      //Build the widget based on the change in the value notifier.
      child: ValueListenableBuilder(
        valueListenable: imageIndexChangeNotifier,
        builder: (BuildContext ctx, int currentPage, Widget? _) {
          //Animation for image change event
          return AnimatedSwitcher(
            switchInCurve: Curves.linear,
            duration: const Duration(seconds: 2),
            child: Image.asset(
              height: 240,
              width: MediaQuery.of(context).size.width,
              images[currentPage],
              key: ValueKey<int>(currentPage),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
