import 'package:firstapp/UI/pages/Account.dart';
import 'package:firstapp/UI/pages/Chat.dart';
import 'package:firstapp/UI/pages/Home.dart';
import 'package:firstapp/UI/pages/People.dart';
import 'package:firstapp/UI/pages/wishlist.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=0;
  final pages =[
    Home(), Chat(), Wishlist(), People(), Account()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black45,
        currentIndex: index,

      items: [
        BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black45,),
        label: "Home"
        ),BottomNavigationBarItem(icon:Icon(Icons.chat,color: Colors.black45,),
            label: "Chat"
        ),BottomNavigationBarItem(icon:Icon(Icons.favorite,color: Colors.black45,),
            label: "Whishlist"
        ),BottomNavigationBarItem(icon:Icon(Icons.shopping_basket,color: Colors.black45,),
            label: "Basket"
        ),BottomNavigationBarItem(icon:Icon(Icons.people,color: Colors.black45,),
            label: "Account"
        ),
      ],
        onTap: (value){
          setState(() {
            index=value;
          });
        },
      ),
      body: pages[index],
    ));
  }
}
