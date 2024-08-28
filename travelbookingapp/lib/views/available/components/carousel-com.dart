import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List images;
  final Widget? header;
  final double borderRadius;
  const ImageCarousel(
      {super.key,
      required this.images,
      required this.header,
      required this.borderRadius});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late List _images;
  int _activeImage = 0;

  @override
  void initState() {
    super.initState();
    // loading images from the URLs
    _images = widget.images.map((e) {
      return ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          child: Image.network(e, fit: BoxFit.cover));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 240, // Set a fixed height for the PageView
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              _activeImage = value;
            });
          },
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return _images[index];
          },
        ),
      ),
      Positioned(
        bottom: 10,
        right: 0,
        left: 0,
        child: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _images.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                    color: _activeImage == index
                        ? Colors.white
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      // if (widget.header != null) widget.header!,
    ]);
  }
}
