import 'package:flutter/material.dart';
import 'package:scrollable_widgets_02/const/colors.dart';
import 'package:scrollable_widgets_02/layout/main_layout.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({super.key});

  final List<int> numbers = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'GridViewScreen',
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 2,
        crossAxisCount: 2,
        children: numbers
            .map(
              (e) => renderContainer(
                  color: rainbowColors[e % rainbowColors.length], index: e),
            )
            .toList(),
      ),
    );
  }

  Widget renderContainer({
    required Color color,
    required int index,
  }) {
    print(index);

    return Container(
      height: 200,
      color: color,
      child: Center(
        child: Text(
          index.toString(),
          style: const TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
