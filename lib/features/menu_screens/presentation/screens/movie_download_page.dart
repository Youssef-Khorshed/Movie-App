import 'package:flutter/material.dart';
import '../widgets/movie_download_widget/movie_download_body.dart';

class MovieDownloadPage extends StatelessWidget {
  const MovieDownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MovieDownloadBody(),
    );
  }
}
