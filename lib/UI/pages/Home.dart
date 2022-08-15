import 'dart:ui';
import 'package:firstapp/UI/TabController/firsttab.dart';
import 'package:flutter/material.dart';

import '../TabController/secondtab.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black45,)),
          title: Text("Green's Garden", style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        color: Colors.green,
      ),),
            centerTitle: true,
            actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: Colors.black45,))
        ],
    
      ) ,
      body: Padding(
          padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 48,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)
                  )
                ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search your plant",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.keyboard_voice)
                ),
              ),
            ),
            
            SizedBox(height: 16,),
            Expanded(flex:3, child: FirstTab()),
            SizedBox(height: 12,),
            Expanded(flex:2, child: SecondTab()),
          ],
        ),

      )
      );
  }
}
