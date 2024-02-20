import 'package:flutter/material.dart';

class n extends StatelessWidget {
  const n({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //drawer: Drawer(),
      body: Center(
        child: Column(children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Back"))
        ]),
      ),
    );
  }
}
