import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliders extends StatelessWidget {
  const CarouselSliders({super.key});

  @override
  Widget build(BuildContext context) {
    final urlImages = [
      'https://img.freepik.com/free-psd/summer-sale-70-discount_23-2148476960.jpg?w=1380&t=st=1662895391~exp=1662895991~hmac=249c8f96c18a734929c18c086a92988d9df338a765ef5217a07a61090bd26a02',
      'https://img.freepik.com/free-psd/horizontal-banner-online-fashion-sale_23-2148585404.jpg?w=1380&t=st=1662895434~exp=1662896034~hmac=4c63272df4520e8d488c002093b83b0f0ff794c704d158e660fce0fa2f9344e5',
      'https://img.freepik.com/free-psd/banner-template-sales-with-woman-pink-suit_23-2148979628.jpg?w=1380&t=st=1662895586~exp=1662896186~hmac=1a45004977dabf9b015625ad4423efab9347aeadffed4bd022b4cdfdae9c348f',
      'https://img.freepik.com/free-psd/shopping-woman-template-banner_23-2148764976.jpg?w=1380&t=st=1662895561~exp=1662896161~hmac=1e3aab0e735278472551d247563bc3bd04168d1d5559603a86bf254dc1682228'
    ];
    return CarouselSlider.builder(
      options: CarouselOptions(
          height: 400,
          autoPlay: true,
          initialPage: 0,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          autoPlayInterval: const Duration(seconds: 4)),
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
