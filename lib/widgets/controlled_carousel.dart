import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ControlledCarousel extends StatefulWidget {
  final List<String> items;

  const ControlledCarousel({super.key, required this.items});

  @override
  State<ControlledCarousel> createState() => _ControlledCarousel();
}

class _ControlledCarousel extends State<ControlledCarousel> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
            carouselController: _controller,
            items: widget.items
                .map((e) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            e,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              height: 100,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: false,
              viewportFraction: 0.5,
              enlargeCenterPage: true,
              // enlargeFactor: 1.5,
            )),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                _controller.previousPage(
                    duration: const Duration(milliseconds: 500));
              },
              child: const Icon(Icons.keyboard_arrow_left, size: 30)),
          InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                _controller.nextPage(
                    duration: const Duration(milliseconds: 500));
              },
              child: const Icon(Icons.keyboard_arrow_right, size: 30)),
        ]),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
