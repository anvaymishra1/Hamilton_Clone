import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
class Lottery extends StatefulWidget {
  @override
  _LotteryState createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text("LOTTERY",style: TextStyle(color: Colors.white,fontSize: 15,),),
        backgroundColorStart: Colors.orange,
        backgroundColorEnd: Colors.green,
        centerTitle: true,
        ),
    );
  }
}