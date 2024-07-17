
import 'package:flutter/material.dart';
import 'package:smap/screens/assess_terminal.dart';
class Details extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400,
      alignment: Alignment.center,
      color: Colors.blueAccent,
      child: Column(

            children: <Widget>[
              Text("Assessment Review"),

              Text("work id: "),
              Text("details: "),
              Text("station: "),
              Text("points: "),
              Text("shift: "),
              Text("supervisor: "),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                    Text("BACK"),
                Text("UPLOAD"),

              ],)
            ],

      ),

    );  }
}