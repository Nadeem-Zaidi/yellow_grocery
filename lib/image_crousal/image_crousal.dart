import 'dart:async';

import 'package:flutter/material.dart';

List<String> imgUrls = [
  "https://www.freepnglogos.com/uploads/vegetables-png/vegetables-download-vegetable-photos-png-image-pngimg-3.png",
  "https://as1.ftcdn.net/v2/jpg/06/21/78/92/1000_F_621789253_XDtxplOL7TvJzTNZDQhuBEBg2BQEWl07.jpg",
];

// class TopSection extends StatelessWidget {
//   List<dynamic>? urls;
//   TopSection({required this.urls, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       child: PageView.builder(
//         itemCount: urls?.length,
//         itemBuilder: ((context, index) {
//           return Container(
//             margin: const EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(15),
//               child: Image.network(
//                 urls?[index],
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

class Crousel extends StatefulWidget {
  final List<dynamic>? urls;

  const Crousel({required this.urls, Key? key}) : super(key: key);

  @override
  State<Crousel> createState() => _CrouselState();
}

class _CrouselState extends State<Crousel> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currPageValue < widget.urls!.length - 1) {
        _currPageValue++;
      } else {
        // Instantly jump back to the first image without animation
        pageController.jumpToPage(0);
        _currPageValue = 0;
        return; // Skip the animateToPage call below
      }

      pageController.animateToPage(
        _currPageValue.toInt(),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });

    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.urls!.length,
            itemBuilder: (_, index) {
              double scaleFactor = 0.8;
              double height = 230.0;
              Matrix4 matrix = Matrix4.identity();

              if (index == _currPageValue.floor()) {
                var currScale =
                    1 - (_currPageValue - index) * (1 - scaleFactor);
                var currTrans = height * (1 - currScale) / 2;
                matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
                  ..setTranslationRaw(0, currTrans, 0);
              } else if (index == _currPageValue.floor() + 1) {
                var currScale = scaleFactor +
                    (_currPageValue - index + 1) * (1 - scaleFactor);
                var currTrans = height * (1 - currScale) / 2;
                matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
                  ..setTranslationRaw(0, currTrans, 0);
              } else if (index == _currPageValue.floor() - 1) {
                var currScale =
                    1 - (_currPageValue - index) * (1 - scaleFactor);
                var currTrans = height * (1 - currScale) / 2;
                matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
                  ..setTranslationRaw(0, currTrans, 0);
              } else {
                var currScale = 0.8;
                matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
                  ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 0);
              }

              return Transform(
                transform: matrix,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      // padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple.shade50,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          widget.urls![index],
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.urls!.length, (index) {
            return Container(
              margin: const EdgeInsets.all(3),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currPageValue.round() == index
                    ? Theme.of(context).primaryColor // Active indicator color
                    : Colors.grey, // Inactive indicator color
              ),
            );
          }),
        ),
      ],
    );
  }
}
