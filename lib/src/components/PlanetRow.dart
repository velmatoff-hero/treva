import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treva_app/src/data/Planets.dart';
import 'package:treva_app/src/data/styles.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Image(image: AssetImage(planet.image), height: 92.0, width: 92.0),
    );
    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 4.0),
          Text(planet.name, style: headerTextStyle),
          Container(height: 10.0),
          Text(planet.location, style: subHeaderTextStyle),
          Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: Color(0xff00c6ff)),
          Row(
            children: <Widget>[
              new Image.asset("assets/img/ic_distance.png", height: 12.0),
              new Container(width: 8.0),
              new Text(
                planet.distance,
                style: regularTextStyle,
              ),
              new Container(width: 24.0),
              new Image.asset("assets/img/ic_gravity.png", height: 12.0),
              new Container(width: 8.0),
              new Text(
                planet.gravity,
                style: regularTextStyle,
              ),
            ],
          ),
        ],
      ),
    );

    final planetCard = Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
          color: Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            )
          ]),
      child: planetCardContent,
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Stack(
        children: [planetCard, planetThumbnail],
      ),
    );
  }
}
