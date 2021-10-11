import 'package:flutter/material.dart';

import 'buttons.dart';

class CustomDialogBox extends StatelessWidget {
  final String title;
  final String description;

  CustomDialogBox({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: contentBox(context, h, w, title, description),
    );
  }
}

contentBox(context, h, w, title, description) {
  return Container(
    height: h * 0.45,
    child: Column(
      children: [
        Positioned(
          top: 1,
          bottom: 100,
          child: Image.asset(
            "assets/inf.jpg",
            height: h * 0.2,
            width: w * 0.25,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              SizedBox(height: h * 0.025),
              Text(description),
              SizedBox(height: h * 0.025),
              dialogButton(
                title: "Cancel",
              ),
              dialogButton(
                title: "Ok",
              )
            ],
          ),
        ),
      ],
    ),
  );
}
