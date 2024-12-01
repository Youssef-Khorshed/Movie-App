import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/assets/app_icons.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [


              Color(0xFF6C52EE), // Purple color

              Color(0xFFFFFFFF), // White color

            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 50),
            // Profile Section
            Row(
              children: [
                const SizedBox(width: 16),
                ClipOval(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.redAccent,
                    ),
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/8afa/1fa5/5599e2f071ef55d859463a3be2cb178e?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EdBa5xBV-4fgNojNABmpftbpU~9V1FSG3itxqowAJTQ7icJZRKqJTgNntyvfN-l98oKwutIO9VRXG41-qZtSrJoKbdny3NHKITymos3viCBYWVi3UUdj1lKe76alRw14Urhe20XnOShW~Ab5EbyyODGM3QXF0dBh44YM4SCgbQYrYjVg6-BQHZwoYxFM22l2ZbQWb5GU5BnI3mltvsbs8~U25usCcmLGuWkDoY76RPaAe9S~gRbIVoDhFQUbXYFOIGf14yJYub0sOLkA~L~hnVYvgE1T9OjmvGFNe9~SKSxYmPfr8jMfiFhoj4LUMOwsheKErnyTnsLmJXBG4VsUqg__",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Menu Items
            _buildDrawerItem(
              icon: "https://s3-alpha-sig.figma.com/img/0b55/599f/b0e07c7c09cdc5c52f9f668361b3fb4a?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JxnFgPOANb1QJT7yozi6a0GE-xne838r30FmDPfS-X01o69d5q--TD2y4ogfMyNElEfF84lHOiD9UMR590~Xh1Q-yczF9d7la748Xsi~RcVMWYte~7R2BMdjjAcWscj3~AlcrvynfHsG47phmVfQsXTeTp40D-VmvFpoXbPyIPBQ3mjU4ivg0ABYdXVZQwnPy2-NZXL0FySlavhUO1qpsUegYPRkIpRT--NWKNouZ6~7sjQn1mePaI0sJM3fbFsoAEmA3Gz-xc3jQtPBurBZdo~lM4w2xSWsyMHq2Z7QU0UBniGmukFgJi8-Zgn2PWmYE26TkhvurUCNVKTY7UEcew__",
              title: 'Home',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              icon:  "https://s3-alpha-sig.figma.com/img/05dd/ec4c/43e8bf3f2d4023b529ed30f2ed0a5e0a?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RgqY~kpKd5SSMjX2dE476m9mSFYfN~vNY4sFmlBffoDceZqhVc1pOvRpMVTqQfNXHW0i4MRhdFhK0WYz~o9Eu1aNWM6eR8Dj96gki9OPeb2ftE6ifMYuJnht~kWGRQ6edT8QGU2p7RVlwuG2hpEqddipA8-~dlnRXCi-vvjFZkM8h087iCNhiiV2eJghzW5kSnRH1Rovz5SzIbEqi-RbjVGuPAjlnHTEK6Ik8o3yrOhVQ8bGaCgadHwwxmY7pj9ackJuBTTzPdFwbyKgKeOWH9fYSuqIV47VlQYeUi6tMlnib6jBpnMO9GhUkrpSVN7ALBrddoVcbRFQeMY6DbZPcw__",
              title: 'Watch later',
              onTap: () {
                // Navigate to movies
              },
            ),
            _buildDrawerItem(
              icon:  'https://s3-alpha-sig.figma.com/img/d9ce/8177/9604c1c37043195ebd03fdf18f27d6c4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FquN9NZQ-VFiDjn3UH2HAUkqsyMa~5s0ZAt1Fb3bpqDdWy82OcB3O1YW79rN5SKJHJulZGxu76DEK3eYSPl4Leah-SHd1qO5j8h0QpzUrlpYUdU9jeVGUCTeorrx2Ui-ejP8kHCtZFnfvNHulmiD2V76jQZVxoeqz43LcKGvXT67aJIO2sYgr9Qtq6RIdGHm0YLKQRxC7e-IgEQWmCKQa4goWAaitGxg5aYI6HzgEhhX6oxgwkr7sJY2ByZEFSEFPSD941WL9o3jT6Ruqf4ofGpQvhSE4-gLp6fuLPm1P8k2e-~aT5-k8YC8vvjQJCVFDV~zGVotNopIOVVNwNbm9A__',
              title: 'Download',
              onTap: () {
                // Navigate to TV Shows
              },
            ),
            _buildDrawerItem(
              icon:  'https://s3-alpha-sig.figma.com/img/d9ce/8177/9604c1c37043195ebd03fdf18f27d6c4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FquN9NZQ-VFiDjn3UH2HAUkqsyMa~5s0ZAt1Fb3bpqDdWy82OcB3O1YW79rN5SKJHJulZGxu76DEK3eYSPl4Leah-SHd1qO5j8h0QpzUrlpYUdU9jeVGUCTeorrx2Ui-ejP8kHCtZFnfvNHulmiD2V76jQZVxoeqz43LcKGvXT67aJIO2sYgr9Qtq6RIdGHm0YLKQRxC7e-IgEQWmCKQa4goWAaitGxg5aYI6HzgEhhX6oxgwkr7sJY2ByZEFSEFPSD941WL9o3jT6Ruqf4ofGpQvhSE4-gLp6fuLPm1P8k2e-~aT5-k8YC8vvjQJCVFDV~zGVotNopIOVVNwNbm9A__',
              title: 'Favorite Movies',
              onTap: () {
                // Navigate to Watchlist
              },
            ),
            _buildDrawerItem(
              icon:  'https://s3-alpha-sig.figma.com/img/d9ce/8177/9604c1c37043195ebd03fdf18f27d6c4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FquN9NZQ-VFiDjn3UH2HAUkqsyMa~5s0ZAt1Fb3bpqDdWy82OcB3O1YW79rN5SKJHJulZGxu76DEK3eYSPl4Leah-SHd1qO5j8h0QpzUrlpYUdU9jeVGUCTeorrx2Ui-ejP8kHCtZFnfvNHulmiD2V76jQZVxoeqz43LcKGvXT67aJIO2sYgr9Qtq6RIdGHm0YLKQRxC7e-IgEQWmCKQa4goWAaitGxg5aYI6HzgEhhX6oxgwkr7sJY2ByZEFSEFPSD941WL9o3jT6Ruqf4ofGpQvhSE4-gLp6fuLPm1P8k2e-~aT5-k8YC8vvjQJCVFDV~zGVotNopIOVVNwNbm9A__',
              title: 'Setting',
              onTap: () {
                // Navigate to Settings
              },
            ),  _buildDrawerItem(
              icon: "https://s3-alpha-sig.figma.com/img/185b/be5d/2d7f708e2b3300d041d00e200ca6f2a0?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UovcClShSHe6Z0UFyK4r5nICoZvC7Bw6lC9d6~Y5UvlnfolBTO5GzYTxkXcNIyJJ8hkElQZOLGLfNKCtwSW00Ld27JjhB9KdaokxvaXxD5aEsc5iHq2jjO5NMX3cnyE8hE0lmzRvHEKYpzo6d1m9uLh9MZMtOhaCdqpzkzpjE1riub00rVWU6JyzWAoUEH7G3u5UoGn0g91jh6l9WgZMdPR5M26K771L5sszya4GURdUdAr7h6GlPSk~Rjyu2A8Hd3V-2plhd4QD2FjspJtQ2u31Yyc2XzTbCEgO0Y1mr0L363Y462fzT6kFmao~103rnjPVLLXCnvU1yZ0~IMTO9A__",
              title: 'Actors & Artists',
              onTap: () {
                // Navigate to Help
              },
            ),
            _buildDrawerItem(
              icon:  "https://s3-alpha-sig.figma.com/img/c55f/ba98/00fca0f45b36dfee1574bd78a3cda5d4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YaZjDe602vtxTSPB37z4UQTh~pE4ysYFGWQA5WImzzc8ZiH-xh0WWfOxvrabtvgIoMSy30QnIJGXpKaZuuRa7jeGLGczx7SZAq05~Vj~2Cxk54luDZQvkcIGokOM1xpGr6T5KuyrsRlFI2lezAusJZrxCIUOW9B2IF6qNtdgDI-eLIgKeheivQSIwR6LIoGbI0R1qYDlaLlgZIl23h1YwREM0ri~iI3TRkcGB45A7JutD2K0lUFlF2Ow4Y1sw6EkJ8zl~a0i2mzS02B2tgk4wwlQaxWdQa857-G4IQfBSs0v06Qz8uLlXAZ1kweN4eZJnGXcTknxdauNfvhqH04caw__",
              title: 'About us',
              onTap: () {
                // Navigate to Help
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        Container(
          height: 1,
          color: Color(0xff3E2F88), // Line above the item
        ),
        ListTile(
          leading: Image.network(
            icon,
            color: Color(0xff3E2F88), // Icon color
            height: 24,
            width: 24,
          ),
          title: Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          onTap: onTap,
        ),
        Container(
          height: 1,
          color: Color(0xff3E2F88), // Line below the item
        ),
      ],
    );
  }

}
