// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';

import 'package:movie_app/core/utils/colors/app_colors.dart';

// ignore: must_be_immutable
class CustomNoitifcationcardNotification extends StatelessWidget {
  String title;
  String subtitle;
  bool isNew;
  CustomNoitifcationcardNotification({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return _buildNotificationCard(title, subtitle, isNew);
  }

  Widget _buildNotificationCard(String title, String subtitle, bool isNew) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  gradient: LinearGradient(colors: [
                    AppColors.purple.withOpacity(0.9),
                    AppColors.white5,
                  ], end: const Alignment(0, -8)),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: AppColors.lightgray,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: const AutoSizeText('Pic'),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            title,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          AutoSizeText(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isNew) ...[
            horizontalSpace(8.0),
            Container(
              width: 8.0,
              height: 8.0,
              decoration: const BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
