
import 'package:flutter/material.dart';

import 'calc.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return fcalcutor();
  }
}
class fcalcutor extends State<MyApp>{
  var myco=TextEditingController();
  var st=0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.cyan,
        appBar:AppBar(
          title:Text("calculator age",style: TextStyle(fontSize: 25),),
          backgroundColor: Colors.blue,
          // foregroundColor: Colors.green,

        ) ,
        body:Container(
//color: Colors.green,
          //color: Colors.cyan,
          child: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                  child: TextField(

                    decoration: InputDecoration(

                      labelText: "Brith ",
                      labelStyle: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold),
                      hintText: "enter your brith year",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10,color: Colors.black),
                        borderRadius: BorderRadius.circular(15.0),

                      ),
                    ),
                    keyboardType: TextInputType.number,
                    controller: myco,
                  ),
                ),//brith
                SizedBox(height: 20,),
                Container(
                    child: Text("your age is $st",style: TextStyle(fontWeight:FontWeight.w800,fontSize: 25,color:Colors.indigo),)
                ),
                SizedBox(height: 20,),
                Container(

                  margin: EdgeInsets.fromLTRB(5, 2, 5, 2),
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    splashColor: Colors.blue,
                    child: Text("Get value",style: TextStyle(fontSize: 25),),
                    onPressed: (){
                      setState(() {
                        num y=num.parse(myco.text!);
                        calc(y as int);
                        st=calc.age1;

                      });
                    },


                  ),
                ),//show age
              ]
          ),
        ),

        )
      ),
    );

  }

}
