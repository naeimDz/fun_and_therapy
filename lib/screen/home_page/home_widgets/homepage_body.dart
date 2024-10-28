import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/model/GameModel.dart';
import '../../../core/model/data_from_json.dart';
import '../../../core/shared_pref/provider_lang.dart';
import 'game_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Consumer<LangProvider>(builder: (context, langProvider, _) {
        return Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  FutureBuilder<dynamic>(
                    future: DataFromjson.loadData(context),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        if (snapshot.hasError) {
                          return Text("error! ${snapshot.error}");
                        } else if (snapshot.hasData) {
                          List<Game> games = snapshot.data;
                          // Use the data here
                          return SingleChildScrollView(
                            child: Column(
                              children: games
                                  .map((game) => GameCard(game: game))
                                  .toList(),
                            ),
                          );
                        } else {
                          return const Text('Empty data');
                        }
                      } else {
                        return Text('State: ${snapshot.connectionState}');
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class Cardgamie extends StatelessWidget {
  const Cardgamie({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 17,
        vertical: 7,
      ),
      child: ListTile(
        title: Text("اسم اللعبة"),
        leading: CircleAvatar(child: Text("time")),
        minLeadingWidth: 10,
        subtitle: Text("SubTitle"),
        trailing: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30, // 30 px padding
            vertical: 5, // 5 px padding
          ),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Text('تفاصيل اللعبة'),
        ),
      ),
    );
  }
}
