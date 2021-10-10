import 'package:flutter/material.dart';

class textButtonIconModal extends StatelessWidget {
  final String title;
  final Icon buttonIcon;

  textButtonIconModal({this.buttonIcon, this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: null,
      icon: buttonIcon,
      label: Text(title),
    );
  }
}
