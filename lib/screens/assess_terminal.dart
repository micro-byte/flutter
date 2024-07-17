
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
class assess_terminal extends StatefulWidget {
  @override
  _Assess createState() => _Assess();
}
class _Assess extends State<assess_terminal>{
  //TODO implement the upload method tha evaluates if the value is empty
File? _image;
Future<void> _pickImage() async{
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source:
  ImageSource.gallery);
  if(pickedFile != null ){
    setState(() {
      _image = File(pickedFile.path);
    });
  }
}
  //methods and variable declaration done here...
  String? work_id, details, station, points, shift, image;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Center (
          child: Text( style: TextStyle(fontSize:  23,
              color: Colors.lightGreen, fontWeight: FontWeight.bold),
              "ASSESSMENT TERMINAL"),
        ),
      ),

      body:

         Column(
           children: [
             Text(style:
             TextStyle(fontSize:  18,
                 color: Colors.black,
                 fontWeight: FontWeight.w500),
                 "supervisor"),
             Card(
               color: Colors.blueAccent,
               child:Padding(
                 padding: EdgeInsets.all(10),
                 child: ListView(
                shrinkWrap:true,
                children: <Widget>[
                  Column(
                    children: [
                      Text('Assessment Details',
                        style: TextStyle(fontSize:  23,
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),

                      Padding(padding: EdgeInsets.all(14),
                            child: TextField(
                              keyboardType: TextInputType.number,

                              textAlign: TextAlign.center,

                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  label: Center(child: Text(style:
                                  TextStyle(fontSize:  18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                      "workId")),
                                  hintText: 'Enter work Id'

                              ),
                              maxLength: 7,

                              style: TextStyle(fontSize:  23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),

                            ),
                          ),

                  Padding(padding: EdgeInsets.all(14),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        label: Center(child: Text(style:
                        TextStyle(fontSize:  18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),"details")),
                        hintText: 'Enter Details',

                      ),
                      style: TextStyle(fontSize:  23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      maxLines: 3,
                      maxLength: 50,
                    ),
                   ),


             //INSERT ROW OD DROPDOWNS HERE
             ],
                      ),

                  Card(
                    color:  Colors.lightBlueAccent,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       const Text(style:
                        TextStyle(fontSize:  18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500), "station"),
                        const Text(style:
                        TextStyle(fontSize:  18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),"points"),
                       const Text(style:
                        TextStyle(fontSize:  18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),

                            "shift"),
                      ],
                    ),
                  ),

                  //TODO implement image view here

Center(child:
const Text(style:
TextStyle(fontSize:  18,
    color: Colors.white,
    fontWeight: FontWeight.w500), "select image")),
                        Center(
                          child: GestureDetector(
                          onTap: _pickImage,
                              child: _image == null ? Container(
                                width: 200,
                                height: 200,
                                  color: Colors.white54,
                                child: Icon(Icons.camera_alt,
                                color: Colors.green,),
                              )
                                  :Image.file(_image!, width:
                                200,
                              height: 200,
                              fit:
                                BoxFit.cover,
                              ),
                            ),
                        ),


                ],
                 ),
               ),
             ),
           ],
         ),
    );
   }


}
//todo review all the assessment details in this dialog
