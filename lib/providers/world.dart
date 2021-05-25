import 'package:flutter/cupertino.dart';

class WorldData {
  final String confirmed;
  final String recovered;
  final String deaths;

  WorldData(
      {@required this.confirmed,
      @required this.recovered,
      @required this.deaths});
}
