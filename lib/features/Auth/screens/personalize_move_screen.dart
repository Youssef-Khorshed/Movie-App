import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import '../../App/costume_widgets/custom_app_button.dart';
import '../widgets/custom_auth_subtitle_widget.dart';
import '../widgets/custom_auth_title_widget.dart';
import '../widgets/custom_background_continer.dart';

class PersonalizeMoveScreen extends StatefulWidget {
  const PersonalizeMoveScreen({super.key});

  @override
  State<PersonalizeMoveScreen> createState() => _PersonalizeMoveScreenState();
}

class _PersonalizeMoveScreenState extends State<PersonalizeMoveScreen> {
  final genres = [
    "Action",
    "Adventure",
    "Comedy",
    "Drama",
    "Thriller",
    "Crime",
    "Mystery",
    "Historical",
    "War",
    "Western",
    "Musical",
    "Biography",
    "Sports",
    "Horror",
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            title: "personalize Move",
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: CustomBackgroundContiner(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(35),
                const CustomAuthTitleWidget(
                  title: "Personalize your movie experience",
                ),
                verticalSpace(10),
                const CustomAuthSubtitleWidget(
                  subtitle:
                      "Please tell us your preferences so that we can recommend your movie experience as per your want",
                ),
                verticalSpace(40),
                Expanded(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: genres.map((genre) {
                      return ChoiceChip(
                        label: Text(genre),
                        labelStyle: AppTextStyle.style14Gray8W500,
                        selected: false,
                        onSelected: (selected) {},
                        backgroundColor: AppColors.transparent,
                        selectedColor: AppColors.purple,
                      );
                    }).toList(),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.otpScreen);
                    },
                    buttonText: "Continue",
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
