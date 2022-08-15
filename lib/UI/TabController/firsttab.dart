import 'package:flutter/material.dart';

import '../../CustomWidge/reuseablecontainerone.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(44),
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: TabBar(
                  isScrollable: false,
                  labelColor: Colors.black54,
                  unselectedLabelColor: Colors.black38,
                  labelStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: "Recomendation",
                    ),
                    Tab(
                      text: "Best Seller",
                    ),
                  ]),
            ),
          ),
          body: TabBarView(children: [Recomendation(), BestSeller()]),
        ),
      ),
    );
  }
}

class Recomendation extends StatefulWidget {
  const Recomendation({Key? key}) : super(key: key);

  @override
  State<Recomendation> createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ReuseableContainerone(
            name: "Alphaplant",
            price: "\$ 50.49",
            url:"assets/alphaplant.png",
          ),
          SizedBox(width: 20,),
          ReuseableContainerone(
            name: "Ceramicround",
            price: '\$ 40.49',
            url:"assets/ceramicround.png",
          ),
          SizedBox(width: 20,),
          ReuseableContainerone(
            name: "Crassulaovata",
            price: '\$ 35.49',
            url:"assets/crassulaovata.png",
          ),
        ],
      ),
    );
  }
}

class BestSeller extends StatelessWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Best Seller"),
    );
  }
}


