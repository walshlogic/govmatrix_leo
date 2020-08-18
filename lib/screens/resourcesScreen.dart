import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
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
              'Resources Page',
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
