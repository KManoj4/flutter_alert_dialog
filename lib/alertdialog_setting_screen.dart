import 'package:flutter/material.dart';

import 'alert_dialog_box.dart';

class AlertDialogSettingScreen extends StatefulWidget {
  const AlertDialogSettingScreen({super.key});

  @override
  State<AlertDialogSettingScreen> createState() =>
      _AlertDialogSettingScreenState();
}

class _AlertDialogSettingScreenState extends State<AlertDialogSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog setting'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: PopupMenuButton(
              child: Icon(Icons.settings),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Setting',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  value: 1,
                ),
              ],
              onSelected: (value) {
                print('Clicked the setting');
                if (value == 1) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AlertDialogBox(),
                  ));
                }
              },
            ),
          ),
        ],
        backgroundColor: Colors.teal,
      ),
    );
  }
}
