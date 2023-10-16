import 'package:flutter/material.dart';
import 'package:results_project1/view_model/utiles/colors.dart';

class ContainerCustom extends StatelessWidget {
  final List<Color> colors;
  final bool isGradient;
  final Color? color;
  final bool isColor;
  final Widget? child;
  final double padding;

  const ContainerCustom({
    super.key,
    this.color,
    this.child,
    this.isGradient = false,
    this.colors = AppColors.resultSectionBackground,
    this.isColor = false,
    this.padding = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: isColor ? color : null,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          gradient: isGradient
              ? LinearGradient(
                  colors: colors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
        ),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: child,
        ),
      ),
    );
  }
}
