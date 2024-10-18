// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
runApp(Pointscounter());
}

// ignore: must_be_immutable
class Pointscounter extends StatefulWidget {
  @override
  State<Pointscounter> createState() => _PointscounterState();
}

class _PointscounterState extends State<Pointscounter> {
 int teamAPoints=0;

  int teamBPoints=0;

  void addOnePoint(){}

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter "),),
        body: Column(
          children: [
            const Spacer(),
            Row(

    
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                              
                    children: [
                      Text("Team A",style: TextStyle(fontSize: 32),),
                      Text("$teamAPoints",style: TextStyle(fontSize: 150),),
                      Spacer(flex: 1,),
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamAPoints++;
                          setState(() {
                            
                          });
                          print(teamAPoints);
                        }, child: Text("add 1 point",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),
                       Spacer(flex: 1,),
                        ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamAPoints+=2;
                          setState(() {
                            
                          });
                        }, child: Text("add 2 point",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),Spacer(flex: 1,),
                        ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamAPoints+=3;
                          setState(() {
                            
                          });
                        }, child: Text("add 3 point",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),
                        Spacer(flex:50,)
                                    ],
                  ),
                ),
                   SizedBox(
            height: 350,
            child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
            )),
                   SizedBox(
                    height: 500,
                     child: Column(
                                       children: [
                      Text("Team B",style: TextStyle(fontSize: 32),),
                      Text("$teamBPoints",style: TextStyle(fontSize: 150),),
                    Spacer(flex: 1,),
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamBPoints++;
                          setState(() {
                            
                          });
                        }, child: Text("add 1 point",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),
                       Spacer(flex: 1,),
                        ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamBPoints+=2;
                          setState(() {
                            
                          });
                        }, child: Text("add 2 point",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),
                        Spacer(flex: 1,),
                        ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamBPoints+=3;
                          setState(() {
                            
                          });
                        }, child: Text("add 3 point",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),
                        Spacer(flex: 50,)
                   
                                       ],
                                     ),
                   ),
              
                 
                 ],
            ),
           const Spacer(),
          ElevatedButton(
                        style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        minimumSize: Size(120,40)),
                        onPressed: (){
                          teamAPoints=0;
                          teamBPoints=0;
                          setState(() {
                            
                          });
                        }, child: Text("reset",style: TextStyle(fontSize: 20,
                        color: Colors.black),)),
                        Spacer(flex:3),
          ],
        ),
          
      ),
      
    );
  }
}