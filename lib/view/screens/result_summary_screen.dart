import 'package:flutter/material.dart';

import '../../view_model/utiles/colors.dart';
import 'button_section/button_section.dart';
import 'result_section/result_section.dart';
import 'summary_section/summary_section.dart';

class ResultSummaryScreen extends StatelessWidget {
  const ResultSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.summarySectionBackground,
      body: SafeArea(
        child: Column(
          children: [
            ResultSection(),
            SummarySection(),
            ButtonSection(),
          ],
        ),
      ),
    );
  }
}
