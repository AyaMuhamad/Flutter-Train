import 'package:flutter/material.dart';
import 'package:test_flutter_app/Models/tune_model.dart';
import 'package:test_flutter_app/widgets/tune_item.dart';

class Tune_view extends StatelessWidget {
  const Tune_view({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(Colors.black),
    // Colors.blueGrey,
    // Colors.pink,
    // Colors.purple,
    // Colors.green,
    // Colors.blue,
    // Colors.tealAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Flutter Tune",
          style: TextStyle(fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Color(0xff253238),
      ),
      body: Column(
        children: tunes.map((e) => Tune_item(t: e,)).toList() ,
      ),
    );
  }

  // List<Tune_item> lst() {
  //   List<Tune_item> item = [];
  //   for (var i in tunes) {
  //     item.add(Tune_item(
  //       color: i,
  //     ));
  //   }
  //   return item;
  // }
}
