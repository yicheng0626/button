import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color(0xFFFFEB3B),
              foregroundColor: Colors.red,
            ),
            child: const Text('RaisedButton'),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "你按下RaisedButton",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.black45,
                  textColor: Colors.white,
                  fontSize: 16.0);

            },

          ),

          const SizedBox(height: 10),

          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color(0xFF1976D2),
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "你按下FlatButton",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.black45,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: const Text('FlatButton'),
          ),

          const SizedBox(height: 10),

          OutlinedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              backgroundColor: Color(0xB3FFFFFF),
              foregroundColor: Colors.black,
              side: (BorderSide(width: 1, color: Color(0xFFF44336))),
            ),
            onPressed: () {              Fluttertoast.showToast(
                msg: "你按下OutlinedButton",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.black45,
                textColor: Colors.white,
                fontSize: 16.0);},
            child: const Text('OutlineButton'),
          ),

          const SizedBox(height: 10),

          IconButton(
            color: Colors.blue,
            icon: Icon(Icons.phone_android),
            onPressed: () {              Fluttertoast.showToast(
                msg: "你按下IconButton",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.black45,
                textColor: Colors.white,
                fontSize: 16.0);},
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "你按下IconPhone",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.black45,
                textColor: Colors.white,
                fontSize: 16.0);
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.phone_android),

          ),

          const SizedBox(height: 10),

          ElevatedButton.icon(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "RaisedButton.icon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 2,
                    backgroundColor: Colors.black45,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Color(0xFF9E9E9E),
                foregroundColor: Colors.red,
              ),
              icon: Icon(Icons.phone_android),
              label: Text('RaisedButton.icon')),

        ],
      ),
    );
  }
}