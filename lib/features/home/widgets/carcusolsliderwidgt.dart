import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/features/Details/views/movie_details_view.dart';

class CarouselWithScore extends StatelessWidget {
  // Constructor with named key parameter
  const CarouselWithScore({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 250.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieDetailsView()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    // The main image container
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/11e2/7082/801cdcd576d43efbe73256520a804041?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mGiPUhxcTT8O1Uk1wYL6Po2MfW9kny~efO~71nJNdgkZou0R~q~U9H2VETUk~3FwpYaonQreF9ZVef6u-Yl9ydnKs9~nnAYdGnmhlKvx9HmDNZUqoyjGfe4MSt2WAAYwA~Krl6ckuvtYyDr2MhFOEuYKkwxfTZU6kanXNWkZjXIFSDSWnG24N75HWJLuJ54XtOeVgDud7QM2C-ryttEZHhr4mOKrIfwIh-zY0iGuvqD0kD1ZYMceiFkn-rgaZUGH1~SCJayXA4m~Dopinq2d5derjVgHe3MJzprA8f-ei5f-3nJi2x27qnqyfwm7O7HTv8-ThMsKu561-cCqD40Piw__',
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // The rating container at the bottom right
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            15), // Apply border radius for the blur
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: 20, sigmaY: 20), // Apply blur effect
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.7), // Semi-transparent black color
                              borderRadius: BorderRadius.circular(
                                  15), // Border radius for the container
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  '9.5',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
