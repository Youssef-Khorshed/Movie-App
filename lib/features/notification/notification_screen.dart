import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/notification/widgets/section_title_widget.dart';
import 'widgets/build_notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Color(0xff6C52EE),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: AutoSizeText(
          AppLocalizations.of(context)!.notifications,
          style: AppTextStyle.style20blueW700,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(AppIcons.settingnotification),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        children: [
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: AutoSizeText(
                  AppLocalizations.of(context)!.mark_all_as_read,
                  style: const TextStyle(color: Color(0xff777777)),
                ),
              ),
            ],
          ),
          BuildNotification(
            title: AppLocalizations.of(context)!.today,
            isNew: false,
            subtitle: "",
          ),
          BuildNotification(
            title: AppLocalizations.of(context)!.new_movie,
            subtitle: 'Details',
            isNew: true,
          ),
          BuildNotification(
            title: AppLocalizations.of(context)!.another_movie,
            subtitle: 'Details',
            isNew: true,
          ),
          const SizedBox(height: 16.0),
          SectionTitleWidget(title: AppLocalizations.of(context)!.yesterday),
          BuildNotification(
              title: AppLocalizations.of(context)!.new_update_available,
              subtitle: AppLocalizations.of(context)!.new_update_description,
              isNew: false),
          BuildNotification(
            title: AppLocalizations.of(context)!.yesterday_movie,
            subtitle: 'Details',
            isNew: false,
          ),
          const SizedBox(height: 16.0),
          SectionTitleWidget(
              title: AppLocalizations.of(context)!.some_days_ago),
          BuildNotification(
            title: AppLocalizations.of(context)!.old_movie,
            subtitle: 'Details',
            isNew: false,
          ),
        ],
      ),
    );
  }
}
