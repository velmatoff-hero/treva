import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treva_app/src/components/GradientAppBar.dart';
import 'package:treva_app/src/components/PlanetSummary.dart';
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
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: SliverChildBuilderDelegate(
                  (context, index) => PlanetSummary(planets[index]),
                  childCount: planets.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
