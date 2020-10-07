import 'package:flutter/material.dart';

import 'src/components/GradientAppBar.dart';

void main() {
  runApp(MaterialApp(title: "Planets", home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [GradientAppBar('treva')],
      ),
    );
  }
}
