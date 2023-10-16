import 'package:flutter/material.dart';
import 'package:results_project1/view/components/container_custom.dart';
import 'package:results_project1/view_model/utiles/colors.dart';

import '../../components/text_custom.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCustom(
      isGradient: true,
      child: Column(
        children: [
          TextCustom(
            data: "Your Result",
            color: AppColors.secondryTextColor,
          ),
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundColor: AppColors.circleAvatarBackgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextCustom(
                  data: "76",
                  color: AppColors.whiteColor,
                  fontSize: 60,
                ),
                const TextCustom(
                  data: "of 100",
                  color: Color(0xff7B70F9),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TextCustom(
            data: "Great",
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          const SizedBox(height: 10),
          TextCustom(
            data:
                "You scored higher than 65% of the people who have taken these tests.",
            color: AppColors.secondryTextColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
