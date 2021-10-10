import 'package:flutter/material.dart';

import 'modal.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("New App Bar"),
        elevation: 0.0,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              bottomMethod(context, w);
            },
            child: Text("Open Item List")),
      ),
    );
  }
}
