
import 'package:flutter/material.dart';

asetSuccessDialog(context, accName, date, status) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('12345678'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [Text(accName), Text(date), Text("Status: $status")],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('ok'))
          ],
        );
      });
}
