import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:covid_19/providers/world.dart';

class CoronaProvider with ChangeNotifier {
  WorldData worldd;
  String updated;

  Future<void> getData() async {
    final worldPositive = 'https://api.kawalcorona.com/positif/';
    final responsePositive = await http.get(worldPositive);
    final resultPositive = json.decode(responsePositive.body);

    final worldRecoverd = 'https://api.kawalcorona.com/sembuh/';
    final responseRecoverd = await http.get(worldRecoverd);
    final resultRecoverd = json.decode(responseRecoverd.body);

    final worldDeaths = 'https://api.kawalcorona.com/meninggal/';
    final responseDeaths = await http.get(worldDeaths);
    final resultDeaths = json.decode(responseDeaths.body);

    worldd = WorldData(
        confirmed: resultPositive['value'],
        recovered: resultRecoverd['value'],
        deaths: resultDeaths['value']);

    notifyListeners();
  }
}
