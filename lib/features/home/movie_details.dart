import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Routing/app_routes.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/Search/search_widgets/custom_gridnet_chip_list_search.dart';
import 'package:movie_app/features/Search/search_widgets/custom_itemsdropdown_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_search_bar_serch.dart';
import 'package:movie_app/features/Search/search_widgets/custom_textfiledSearch_search.dart';
import '../../core/utils/mediaquery/mediaquery.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHelper = MediaQueryHelper(context);
    List<String> images = [
      "https://s3-alpha-sig.figma.com/img/3a9f/6e1a/771c843e2d110994ce9fb5aba047dfd4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CA-woXawQhLHYZjd9zNdkmeLVMVaxMEkW3sWAtzFsnq4hYSWRbjlYpMYCwc75TB65VgjmGi8Iy9gW21KoXo~-5FdBanV4ENdmZSu-aCiovVk3ufykuE0akU7OI18EAj1dJrA4~Pl7xKUmKYdEk1Oc8VvIituttYHdA1OKtRNygXQy0mAesUx9IeQAkcA2Q5qLJZYq0jo3PhPX6ZhLinbpQObBcLY6W5-Tf3f85trpO2V1ShO6dnbZshXMJJt2JiEc3fYKQ0aKhDdk9yC5TZQgucOMIiF2pR0xkshRsTtxij0i~OgS5tExU29wG03y9injMdfaSLqOBPtYdXQhA~XcA__",
      "https://s3-alpha-sig.figma.com/img/3a9f/6e1a/771c843e2d110994ce9fb5aba047dfd4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CA-woXawQhLHYZjd9zNdkmeLVMVaxMEkW3sWAtzFsnq4hYSWRbjlYpMYCwc75TB65VgjmGi8Iy9gW21KoXo~-5FdBanV4ENdmZSu-aCiovVk3ufykuE0akU7OI18EAj1dJrA4~Pl7xKUmKYdEk1Oc8VvIituttYHdA1OKtRNygXQy0mAesUx9IeQAkcA2Q5qLJZYq0jo3PhPX6ZhLinbpQObBcLY6W5-Tf3f85trpO2V1ShO6dnbZshXMJJt2JiEc3fYKQ0aKhDdk9yC5TZQgucOMIiF2pR0xkshRsTtxij0i~OgS5tExU29wG03y9injMdfaSLqOBPtYdXQhA~XcA__",
      "https://s3-alpha-sig.figma.com/img/3a9f/6e1a/771c843e2d110994ce9fb5aba047dfd4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CA-woXawQhLHYZjd9zNdkmeLVMVaxMEkW3sWAtzFsnq4hYSWRbjlYpMYCwc75TB65VgjmGi8Iy9gW21KoXo~-5FdBanV4ENdmZSu-aCiovVk3ufykuE0akU7OI18EAj1dJrA4~Pl7xKUmKYdEk1Oc8VvIituttYHdA1OKtRNygXQy0mAesUx9IeQAkcA2Q5qLJZYq0jo3PhPX6ZhLinbpQObBcLY6W5-Tf3f85trpO2V1ShO6dnbZshXMJJt2JiEc3fYKQ0aKhDdk9yC5TZQgucOMIiF2pR0xkshRsTtxij0i~OgS5tExU29wG03y9injMdfaSLqOBPtYdXQhA~XcA__",
      "https://s3-alpha-sig.figma.com/img/3a9f/6e1a/771c843e2d110994ce9fb5aba047dfd4?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CA-woXawQhLHYZjd9zNdkmeLVMVaxMEkW3sWAtzFsnq4hYSWRbjlYpMYCwc75TB65VgjmGi8Iy9gW21KoXo~-5FdBanV4ENdmZSu-aCiovVk3ufykuE0akU7OI18EAj1dJrA4~Pl7xKUmKYdEk1Oc8VvIituttYHdA1OKtRNygXQy0mAesUx9IeQAkcA2Q5qLJZYq0jo3PhPX6ZhLinbpQObBcLY6W5-Tf3f85trpO2V1ShO6dnbZshXMJJt2JiEc3fYKQ0aKhDdk9yC5TZQgucOMIiF2pR0xkshRsTtxij0i~OgS5tExU29wG03y9injMdfaSLqOBPtYdXQhA~XcA__",
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: mediaQueryHelper.width,
                child: Stack(
                  children: [
                    Image.network(
                      images[0],
                      height: 300,
                      width: mediaQueryHelper.width,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 20,
                      left: 10,
                      child: GestureDetector(
                        child: SvgPicture.asset(AppIcons.arrowback),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Positioned(
                      top: 240,
                      left: 10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 123,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.lightgray,
                              AppColors.purple,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Text(
                          "Horror",
                          style: GoogleFonts.robotoFlex(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // SizedBox(
              //   height:
              //       50, // Increase height to make it more comfortable for display
              //   child: Padding(
              //     padding: const EdgeInsets.all(2.0),
              //     child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: categories.length,
              //       itemBuilder: (BuildContext context, int index) {
              //         return Container(
              //           margin: const EdgeInsets.all(1),
              //           alignment: Alignment.center,
              //           height: 50,
              //           width: 100,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             gradient: const LinearGradient(
              //               colors: [
              //                 AppColors.lightgray,
              //                 AppColors.purple,
              //                 AppColors.lightpurple,
              //               ],
              //               begin: Alignment.topLeft,
              //               end: Alignment.bottomRight,
              //             ),
              //           ),
              //           padding: const EdgeInsets.symmetric(
              //               vertical: 8, horizontal: 15),
              //           child: Text(
              //             categories[index],
              //             style: GoogleFonts.robotoFlex(
              //               fontSize: 16,
              //               color: AppColors.white,
              //             ),
              //           ),
              //         );
              //       },
              //       separatorBuilder: (BuildContext context, int index) {
              //         return const SizedBox(width: 10);
              //       },
              //     ),
              //   ),
              // ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, AppRoutes.search),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: mediaQueryHelper.width,
                    child: const CustomTextfiledsearchSearch(
                      isEnabled: false,
                    )),
              ),
              GradientChipList(
                  categories: Items.categories), // Category filter chips

              const SizedBox(height: 15),
              GridView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: images.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(images[0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  onsearch(String p1) {}
}
