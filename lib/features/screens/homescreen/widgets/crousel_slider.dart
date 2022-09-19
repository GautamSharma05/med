import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliders extends StatelessWidget {
  const CarouselSliders({super.key});

  @override
  Widget build(BuildContext context) {
    final urlImages = [
      'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71lIwQIWiOL._SX3000_.jpg',
      'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71q9vug37WL._SX3000_.jpg',
      'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/A1DNuJI+0lL._SX3000_.jpg',
      'https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71LyiPYjaNL._SX3000_.jpg'
    ];
    return CarouselSlider.builder(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.35,
          autoPlay: true,
          initialPage: 0,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          autoPlayInterval: const Duration(seconds: 7)),
      itemCount: urlImages.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        final urlImage = urlImages[index];
        return buildImage(urlImage, index);
      },
    );
  }
}

Widget buildImage(urlImage, index) {
  return Image.network(
    urlImage,
    fit: BoxFit.cover,
  );
}
