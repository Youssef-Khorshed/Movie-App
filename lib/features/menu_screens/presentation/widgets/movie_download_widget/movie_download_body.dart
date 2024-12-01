import 'package:flutter/material.dart';
import 'movie_download_card.dart';

class MovieDownloadBody extends StatelessWidget {
  const MovieDownloadBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: MovieDownloadCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}
