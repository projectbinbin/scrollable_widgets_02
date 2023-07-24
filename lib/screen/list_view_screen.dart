import 'package:flutter/material.dart';
import 'package:scrollable_widgets_02/const/colors.dart';
import 'package:scrollable_widgets_02/layout/main_layout.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  final List<int> numbers = List.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'ListViewScreen',
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (context, index) {
          return renderContainer(
            color: rainbowColors[index % rainbowColors.length],
            index: index,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
      ),
    );
  }

  Widget renderSeparatd() {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (context, index) {
        return renderContainer(
          color: rainbowColors[index % rainbowColors.length],
          index: index,
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          height: 10,
        );
      },
    );
  }

  Widget renderBuilder() {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return renderContainer(
          color: rainbowColors[index % rainbowColors.length],
          index: index,
        );
      },
    );
  }

  Widget renderDefault() {
    return ListView(
      children: numbers
          .map(
            (e) => renderContainer(
              color: rainbowColors[e % rainbowColors.length],
              index: e,
            ),
          )
          .toList(),
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
