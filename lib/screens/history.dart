import 'package:flutter/material.dart';
import 'package:kalokola_form/models/alets/alertInfo.dart';
import 'package:kalokola_form/models/styles/appcolor.dart';

class HistoryList extends StatefulWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  State<HistoryList> createState() => _HistoryListState();
}

class _HistoryListState extends State<HistoryList> {
  var data = [
    {
      'name': 'Kalokola Brightus',
      'date': "12/09/2022  09:30 AM",
      'status': 1,
      'id': 04
    },
    {'name': 'Miala M.', 'date': "13/09/2022  10:50 AM", 'status': 0, 'id': 03},
    {
      'name': 'JOSE joseee',
      'date': "12/09/2022  09:30 AM",
      'status': 1,
      'id': 02
    },
    {'name': 'ZIPA Tech', 'date': "10/09/2022  12:30 AM", 'status': 1, 'id': 01}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor().mainColor,
        title: const Text("Hist.."),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            var status = data[index]['status'];
            var accName = data[index]['name'];
            var date = data[index]['date'];
            return Card(
              child: ListTile(
                onTap: () {
                  asetSuccessDialog(context, accName, date, status);
                },
                title: Text("$accName"),
                subtitle: Text('$date'),
                trailing: Icon(
                    status == 1 ? Icons.done_outline_rounded : Icons.dangerous),
              ),
            );
          }),
    );
  }
}
