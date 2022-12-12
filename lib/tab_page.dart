import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.red, Colors.green, Colors.blue];
    return Column(
      children: [
        LayoutBuilder(builder: (context, constraints) {
          print("Maximun width ${constraints.maxWidth}");
          return SizedBox(
            height: 100,
            width: constraints.maxWidth,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context, index) {
                return Container(
                  width: 20,
                  height: 100,
                  color: colors[index % colors.length],
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
