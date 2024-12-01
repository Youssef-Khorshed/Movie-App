import 'package:flutter/material.dart';

import '../../../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import 'movie_download_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieDownloadBody extends StatelessWidget {
  const MovieDownloadBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CostumeAppBar(title: AppLocalizations.of(context)!.download, isBack: true),
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
