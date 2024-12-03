import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
final String title;
  const SectionTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AutoSizeText(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.purpleAccent,
            thickness: 2.0,
          ),
        ),
      ],
    );
  }
}
