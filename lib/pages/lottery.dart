import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:hamiltonclone/hp.dart';
class Lottery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: LotterySt(),
      ),
    );
  }
}
class LotterySt extends StatefulWidget {
  @override
  _LotteryStateSt createState() => _LotteryStateSt();
}

class _LotteryStateSt extends State<LotterySt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text("LOTTERY",style: TextStyle(color: Colors.white,fontSize: 15,),),
        backgroundColorStart: Colors.orange,
        backgroundColorEnd: Colors.green,
        centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.list),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
        bottom: TabBar(
          isScrollable: true, 
          tabs: <Widget>[
            Tab(child: Row(children: <Widget>[Text("Indore")]),),
            Tab(child: Row(
              children: <Widget>[
                Text("Gandhinagar"),
              ],
            ),),
            Tab(child: Row(
              children: <Widget>[
                Text("Vadodara"),
              ],
            ),),
            Tab(child: Row(
              children: <Widget>[
                Text("Ahemedabad"),
              ],
            ),),
            Tab(child: Row(
              children: <Widget>[
                Text("Ujjain"),
              ],
            ),),
            Tab(child: Row(
              children: <Widget>[
                Text("Bhopal"),
              ],
            ),),
          ],
        ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.network("")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  }
}