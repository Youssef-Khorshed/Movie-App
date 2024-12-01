import 'package:flutter/material.dart';
import '../../../core/utils/colors/app_colors.dart';
import 'costume_app_widgets/custom_app_drawer.dart';

class GeneralAppScreen extends StatefulWidget {
  const GeneralAppScreen({super.key});

  @override
  State<GeneralAppScreen> createState() => _GeneralAppScreenState();
}

class _GeneralAppScreenState extends State<GeneralAppScreen> {
  int selctedIndex = 0;
  // Updated list with the correct number of screens
  List<Widget> screens = [
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  // Corrected screen names to match the number of screens
  void onItemTap(int index) {
    setState(() {
      selctedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.white,
            drawer: CustomAppDrawer(
              onItemTap: (index) => onItemTap(index),
              selectedIndex: selctedIndex,
            ),
            body: Expanded(child: screens[selctedIndex])));
  }
}
