import 'package:flutter/material.dart';
import 'package:results_project1/view/components/container_custom.dart';
import 'package:results_project1/view/components/text_custom.dart';
import 'package:results_project1/view/screens/summary_section/list_view_custom/list_view_builder.dart';
import 'package:results_project1/view_model/bloc/cubit.dart';
import 'package:results_project1/view_model/utiles/colors.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = ResultsCubit.get(context);
    return ContainerCustom(
      isColor: true,
      padding: 23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(
            data: "Summary",
            color: AppColors.blackColor,
            fontSize: 20,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListViewCustom(
                  obj: cubit.item[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 17);
              },
            ),
          ),
        ],
      ),
    );
  }
}
