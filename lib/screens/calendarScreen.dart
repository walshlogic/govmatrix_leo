import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      /*appBar: AppBar(
        title: Text('GovMatrix'),
        backgroundColor: Colors.red,
      ),*/

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Calendar Page',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            /*RaisedButton(
              textColor: Colors.white,
              color: Colors.grey,
              child: Text('Back to Main Page'),
              onPressed: () => Navigator.pop(context),
            ),*/
          ],
        ),
      ),
    );
  }
}
