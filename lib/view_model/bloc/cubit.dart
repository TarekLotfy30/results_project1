import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:results_project1/model/result_model.dart';
import 'package:results_project1/view_model/bloc/cubit_states.dart';

class ResultsCubit extends Cubit<ResultsStates> {
  ResultsCubit() : super(ResultsInitial());

  static ResultsCubit get(context) => BlocProvider.of<ResultsCubit>(context);

  List<ResultModel> item = [
    ResultModel(
      icon: "assets/svg/icon-reaction.svg",
      category: "Reaction",
      score: "80",
      categoryColor: const Color(0xffEF9596),
    ),
    ResultModel(
      icon: "assets/svg/icon-memory.svg",
      category: "Memory",
      score: "92",
      categoryColor: const Color(0xffDAAD44),
    ),
    ResultModel(
      icon: "assets/svg/icon-verbal.svg",
      category: "Verbal",
      score: "61",
      categoryColor: const Color(0xff38B28F),
    ),
    ResultModel(
      icon: "assets/svg/icon-visual.svg",
      category: "Visual",
      score: "72",
      categoryColor: const Color(0xff2D3096),
    ),
  ];
}
