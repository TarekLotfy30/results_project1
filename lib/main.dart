import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/screens/result_summary_screen.dart';
import 'view_model/bloc/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ResultsCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResultSummaryScreen(),
      ),
    );
  }
}
