import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogue Sample'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: ElevatedButton(
            child: Text('open Dialogue'),
            onPressed: () {
              openDialog();
            }),
      ),
    );

    Future openDialog() => showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text('sample state in dialog'),
        content: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            isChecked ? 'Yes' : 'No'
            style: TextStyle(fontSize: 24),
          ),
        ),
        actions: [
          TextButton(
            child: Text('Submit'),
            onPressed: () => Navigator.of(context).pop(),
             ),
        ],
      ),
      );
  }
}
