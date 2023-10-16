import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:results_project1/model/result_model.dart';
import 'package:results_project1/view/components/text_custom.dart';
import 'package:results_project1/view_model/utiles/colors.dart';

class ListViewCustom extends StatelessWidget {
  final ResultModel obj;

  const ListViewCustom({super.key, this.onTap, required this.obj});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: Color(
            0xffD3D2DA,
          ),
          width: 0.5,
        ),
      ),
      leading: SvgPicture.asset(
        obj.icon ?? "",
      ),
      title: TextCustom(
        data: obj.category ?? "",
        color: obj.categoryColor,
        fontSize: 16,
      ),
      onTap: onTap,
      trailing: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: obj.score ?? "",
              style: TextStyle(
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: "   / 100",
              style: TextStyle(
                color: AppColors.secondryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
