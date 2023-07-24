import 'package:flutter/material.dart';
import 'package:scrollable_widgets_02/const/colors.dart';
import 'package:scrollable_widgets_02/layout/main_layout.dart';

class SingleChildScrollViewScreen extends StatelessWidget {
  SingleChildScrollViewScreen({super.key});

  final List<int> numbers = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    print(numbers);

    return MainLayout(
      title: 'SingleChildScrollView',
      body: SingleChildScrollView(
        child: Column(
          children: numbers
              .map(
                (e) => renderContainer(
                  color: rainbowColors[e % rainbowColors.length],
                  index: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  //1. 기본
  Widget renderSimple() {
    return SingleChildScrollView(
      child: Column(
        children: rainbowColors
            .map(
              (e) => renderContainer(color: e),
            )
            .toList(),
      ),
    );
  }

  Widget renderContainer({
    required Color color,
    int? index,
  }) {
    if (index != null) {
      print(index);
    }

    return Container(
      height: 200,
      color: color,
    );
  }
}
