import 'package:adil_app/textButton.dart';
import 'package:flutter/material.dart';

Future<dynamic> bottomMethod(BuildContext context, double w) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                SizedBox(
                  width: w * 0.3,
                ),
                Text("Add Item"),
              ],
            ),
            textButtonIconModal(
              title: "Photos",
              buttonIcon: Icon(
                Icons.photo,
                color: Colors.orange,
              ),
            ),
            textButtonIconModal(
              title: "Camera",
              buttonIcon: Icon(
                Icons.camera,
                color: Colors.greenAccent,
              ),
            ),
            textButtonIconModal(
              title: "Notes",
              buttonIcon: Icon(
                Icons.notes,
                color: Colors.blueAccent,
              ),
            ),
            textButtonIconModal(
              title: "Files",
              buttonIcon: Icon(
                Icons.document_scanner,
                color: Colors.pinkAccent,
              ),
            ),
            textButtonIconModal(
              title: "Photos",
              buttonIcon: Icon(
                Icons.photo,
                color: Colors.orange,
              ),
            ),
          ],
        );
      });
}
