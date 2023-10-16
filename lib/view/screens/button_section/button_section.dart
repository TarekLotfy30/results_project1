import 'package:flutter/material.dart';
import 'package:results_project1/view/components/text_custom.dart';
import 'package:results_project1/view_model/utiles/colors.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          elevation: 0,
          backgroundColor: AppColors.buttonColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        child: const TextCustom(
          data: "Continue",
          color: AppColors.whiteColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
