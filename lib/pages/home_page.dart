import 'package:flutter/cupertino.dart';
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
        child: GestureDetector(
          onTap: (){
            print('Clicked');
          },
          child: Container(
            /*transform: Matrix4.rotationZ(0.01745*45),
            transformAlignment: Alignment.center,*/
            alignment: Alignment.center,
            width: 70,
            height: 70,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.lightBlue,
                  offset: Offset(0,0),
                  blurRadius: 10,
                  spreadRadius: 2
                )
              ],
              gradient: LinearGradient(
                colors: [Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
            child: Text(
              'Click',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
