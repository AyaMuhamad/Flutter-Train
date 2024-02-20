import 'package:flutter/material.dart';
import 'package:test_flutter_app/Models/tune_model.dart';

class Tune_item extends StatelessWidget {
  const Tune_item({super.key, required this.t,});
  final TuneModel t;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          t.playSound();
        },
        child: Container(
          color: t.color,
        ),
      ),
    );
  }
}
