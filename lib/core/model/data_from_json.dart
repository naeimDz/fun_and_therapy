import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../shared_pref/provider_lang.dart';
import 'GameModel.dart';

class DataFromjson {
  final _count = 103;
  final _itemsPerPage = 5;
  int _currentPage = 0;

  static Future loadData(BuildContext context) async {
    var currlocale =context.read<LangProvider>().getLang().toString();
    if (currlocale == "ar") {
      String jsonString = await rootBundle.loadString('assets/json/data.json');
      List<dynamic> parsedData = await jsonDecode(jsonString);
      List<Game> games =
          List<Game>.from(parsedData.map((x) => Game.fromJson(x)));
      return games;
    } else {
      String jsonString = await rootBundle.loadString('assets/json/en.json');
      List<dynamic> parsedData = await jsonDecode(jsonString);
      List<Game> games =
          List<Game>.from(parsedData.map((x) => Game.fromJson(x)));
      return games;
    }
  }

  // This async function simulates fetching results from Internet, etc.
  Future<List<Game>> fetch() async {
    final list = <Game>[];
    final n = min(_itemsPerPage, _count - _currentPage * _itemsPerPage);
    // Uncomment the following line to see in real time now items are loaded lazily.
    // print('Now on page $_currentPage');
    await Future.delayed(const Duration(seconds: 1), () {
      for (int i = 0; i < n; i++) {
        list.add(Game(
            name: "naem",
            description: "description",
            time: "time",
            image: "image",
            purpose: ["purpose"],
            color: "color",
            tools: ["tools"]));
      }
    });
    _currentPage++;
    return list;
  }
}
