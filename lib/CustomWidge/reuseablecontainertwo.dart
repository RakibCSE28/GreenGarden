import 'package:flutter/material.dart';
class ReuseableContainerTwo extends StatefulWidget {
  ReuseableContainerTwo({required this.name, required this.price, required this.url});

  final String url;
  final String name;
  final String price;

  @override
  State<ReuseableContainerTwo> createState() => _ReuseableContainerTwoState();
}

class _ReuseableContainerTwoState extends State<ReuseableContainerTwo> {
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.all(
              Radius.circular(20)
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top:8.0, right: 8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    ontap=!ontap;
                  });
                },
                child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child:ontap==false? Icon(Icons.favorite_border): Icon(Icons.favorite_border),
                ),
              ),
            ),
          ),
          Expanded(child: Container(child: Image.asset(widget.url,fit: BoxFit.cover))),
          Text( widget.name,style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 8,),
          Text(widget.price, style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 12,),
          Text(widget.url, style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 12,),
        ],
      ),

    );
  }
}
