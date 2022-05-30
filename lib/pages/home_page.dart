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
        child: MyButton(
          onPressed: (){
            print('My Btn Clicked');
          },
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  var isTapDown = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.onPressed,
      onTapDown: (details){
        setState(() {
          isTapDown = true;
        });

      },
      onTapUp: (details){
        setState(() {
          isTapDown = false;
        });


      },
      child: AnimatedContainer(
      duration: Duration(milliseconds: 150),
        /*transform: Matrix4.rotationZ(0.01745*45),
        transformAlignment: Alignment.center,*/
        alignment: Alignment.center,
        width: 70,
        height: 70,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: isTapDown? Colors.red : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(isTapDown ? 35 : 12),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue,
              offset: Offset(0,0),
              blurRadius: 10,
              spreadRadius: 2
            )
          ],
          // gradient: LinearGradient(
          //   colors: [Theme.of(context).primaryColor,
          //     Theme.of(context).primaryColor.withOpacity(0.5)],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter
          // )
        ),
        child: widget.child
      ),
    );
  }
}
