import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            //borderRadius: BorderRadius.circular(12)
            shape: BoxShape.circle
          ),
          child: Text(
            'Click',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
