import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treva_app/src/components/GradientAppBar.dart';
import 'package:treva_app/src/components/PlanetRow.dart';
import 'package:treva_app/src/data/Planets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [GradientAppBar('treva'), HomePageBody()],
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[1]);
  }
}
