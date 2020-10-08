import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treva_app/src/components/PlanetSummary.dart';
import 'package:treva_app/src/components/Separator.dart';
import 'package:treva_app/src/data/Planets.dart';
import 'package:treva_app/src/data/styles.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xFF736AB7),
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: [
              _getBackground(),
              _getGradient(),
              _getContent(),
              _getToolbar(context)
            ],
          )),
    );
  }

  Container _getBackground() {
    return Container(
      child: Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Color(0x00736AB7), Color(0xFF736AB7)],
              stops: [0.0, 0.9],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.0, 1.0))),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return ListView(
      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: [
        PlanetSummary(planet, horizontal: false),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _overviewTitle,
                style: Style.headerTextStyle,
              ),
              Separator(),
              Text(planet.description, style: Style.commonTextStyle)
            ],
          ),
        )
      ],
    );
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(color: Colors.white),
    );
  }
}
