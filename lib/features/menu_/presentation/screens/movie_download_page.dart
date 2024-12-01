import 'package:flutter/material.dart';

import '../../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';

import '../widgets/movie_download_widget/movie_download_body.dart';
import '../widgets/movie_download_widget/movie_download_card.dart';

class MovieDownloadPage extends StatelessWidget {
  const MovieDownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MovieDownloadBody(),
    );
  }
}

