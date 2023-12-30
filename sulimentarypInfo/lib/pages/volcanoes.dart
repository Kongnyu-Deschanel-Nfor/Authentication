import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../disasterclass.dart';

class Volcanoes extends StatelessWidget {
  const Volcanoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(disasters[2].title),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(29.0),
                  child: Image.asset(
                    disasters[2].images[1],
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  disasters[2].descriptionTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    disasters[2].description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    Image.asset(disasters[2].images[1]),
                    Image.asset(disasters[2].images[2]),
                    Image.asset(disasters[2].images[3]),
                  ],
                ),
                SizedBox(height: 19),
                ElevatedButton(
                  onPressed:(){},
                  child: Text('Download PDF'),
                ),
                SizedBox(height: 55),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_alert,
                        color: Colors.red,
                      ),
                      Text(
                        'UNA NO FEAR, B-ALERT IS HERE',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
