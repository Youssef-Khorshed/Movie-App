import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';

import '../home/home.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff6C52EE),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Home()),
                  (route) => false,
            );
          },
        ),
        title: Text(
          'Notifications',
          style: GoogleFonts.cinzel(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xff6C52EE),
          ),
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
              Spacer(),
              TextButton(
                onPressed: () {
                  // Handle mark all as read
                },
                child: const Text(
                  'Mark all as read',
                  style: TextStyle(color: Color(0xff777777)),
                ),
              ),
            ],
          ),
          _buildSectionTitle('Today'),
          _buildNotificationCard('New Movie!', 'Details', true),
          _buildNotificationCard('Another Movie!', 'Details', true),
          const SizedBox(height: 16.0),
          _buildSectionTitle('Yesterday'),
          _buildNotificationCard('New Update Available', 'A new update of the app is available', false),
          _buildNotificationCard('Yesterday Movie!', 'Details', false),
          const SizedBox(height: 16.0),
          _buildSectionTitle('Some days ago'),
          _buildNotificationCard('Old Movie!', 'Details', false),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: const Divider(
            color: Colors.purpleAccent,
            thickness: 2.0,
          ),
        ),
      ],
    );
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
                  gradient: const LinearGradient(
                    colors: [Colors.purpleAccent, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: const Text('Pic'),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
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
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isNew) ...[
            const SizedBox(width: 8.0),
            Container(
              width: 12.0,
              height: 12.0,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
