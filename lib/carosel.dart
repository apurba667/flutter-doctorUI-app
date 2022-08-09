import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CaroselSliderLoading extends StatefulWidget {
  const CaroselSliderLoading({Key? key}) : super(key: key);

  @override
  State<CaroselSliderLoading> createState() => _CaroselSliderLoadingState();
}

class _CaroselSliderLoadingState extends State<CaroselSliderLoading> {
  final List<String> imgList = [
    "https://media.istockphoto.com/photos/falling-antibiotics-healthcare-background-picture-id1300036753?k=20&m=1300036753&s=612x612&w=0&h=dlbqUqv7hXHw01H1CCycVV8ZhdsNpl_3iehkKasCi3E=",
    "https://media.istockphoto.com/vectors/pills-vector-id1220585226?k=20&m=1220585226&s=612x612&w=0&h=_SPsQCAqri7Lob0Kh7uJEPEaTXs7ufbdALccAizbIS4=",
    "https://media.istockphoto.com/vectors/medicine-vector-id1221395671?k=20&m=1221395671&s=612x612&w=0&h=qWpCbfOefxafQOmvhMFDOTYuTIG41bHmMt67N5VThjs=",
    "https://media.istockphoto.com/photos/pills-falling-from-pill-bottle-on-blue-background-with-copyspace-picture-id1035982466?k=20&m=1035982466&s=612x612&w=0&h=pxV7TIEGvwHpretb1F7Wp5TfqNjDjruq14533W4lZc8="
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: imgList
                .map((item) => Container(
                      child: Center(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                              children: [
                                Image.network(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                ),
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Acetaminophen",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Positioned(
                                    top: 45,
                                    left: 20,
                                    child: Text(
                                      "Flu Oches and poins",
                                      style: TextStyle(color: Colors.white70),
                                    )),
                                Positioned(
                                    top: 80,
                                    left: 20,
                                    child: Text(
                                      "There are many brands and froms\nof acetominophen available.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          wordSpacing: 2),
                                    ))
                              ],
                            )),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                autoPlay: true, aspectRatio: 2, enlargeCenterPage: true))
      ],
    );
  }
}
