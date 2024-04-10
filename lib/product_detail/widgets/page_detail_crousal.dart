import 'package:flutter/material.dart';

class ImageCarouselWithThumbnails extends StatefulWidget {
  final List<String> imageUrls;

  const ImageCarouselWithThumbnails({Key? key, required this.imageUrls})
      : super(key: key);

  @override
  _ImageCarouselWithThumbnailsState createState() =>
      _ImageCarouselWithThumbnailsState();
}

class _ImageCarouselWithThumbnailsState
    extends State<ImageCarouselWithThumbnails> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          height: 200,
          width: 250,

          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius:
                  BorderRadius.circular(10)), // Set height of the carousel
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return SizedBox(
                width: 200, // Set width of each image
                height: 150, // Set height of each image
                child: Image.network(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    border: _currentIndex == index
                        ? Border.all(color: Colors.blue, width: 2)
                        : null,
                    image: DecorationImage(
                      image: NetworkImage(widget.imageUrls[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
