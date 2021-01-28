import 'package:clone_spotify/pages/home/views/home.dart';
import 'package:flutter/material.dart';


class PrimaryView extends StatefulWidget {
  @override
  _PrimaryViewState createState() => _PrimaryViewState();
}

class _PrimaryViewState extends State<PrimaryView> {
  @override
  Widget build(BuildContext context) {
    final double sizeH=MediaQuery.of(context).size.height;
    final double sizeW=MediaQuery.of(context).size.width;

    return Scaffold(
      body:ScrollConfiguration(
        behavior: MyBehavior(),
        child:  SingleChildScrollView(
          child: Container(
            color: Color(0xff09080B),
            padding: EdgeInsets.only(top: sizeH*0.1),
            child: Column(
              children: [
               Home()

              ],
            ),
          ),

        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: 0,
        iconSize: sizeH*0.05,
        selectedLabelStyle: TextStyle(
            fontSize:  sizeH*0.015
        ),
        unselectedLabelStyle:TextStyle(
            fontSize:  sizeH*0.015
        ),
        items: [
          BottomNavigationBarItem(
            icon:  Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.search_rounded),
            label: 'Busca',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.library_music_outlined),
            label: 'Sua Biblioteca',
          )

        ],
        backgroundColor: Color(0xff1D1B26),
        fixedColor: Colors.white,
      )
    );
  }
}


class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
