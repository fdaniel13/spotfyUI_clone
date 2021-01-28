import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;

    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: sizeW*0.05,right: sizeW*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Boa Noite',
                style: TextStyle(
                    color: Colors.white,
                    fontSize:sizeH*0.04,
                    fontWeight: FontWeight.bold
                ),),
              ListView.custom(
                shrinkWrap: true,
                childrenDelegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: sizeW*0.43,
                            decoration: BoxDecoration(
                                color:Color(0xff1D1B26),
                                borderRadius: BorderRadius.circular (sizeW*0.01)

                            ),
                            margin: EdgeInsets.only(bottom: sizeH*0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: sizeW*0.16,
                                  height: sizeH*0.08,

                                ),
                                Text('Músicas\nCurtidas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                          ),
                          Container(
                            width: sizeW*0.43,
                            decoration: BoxDecoration(
                                color:Color(0xff1D1B26),
                                borderRadius: BorderRadius.circular (sizeW*0.01)

                            ),
                            margin: EdgeInsets.only(bottom: sizeH*0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: sizeW*0.16,
                                  height: sizeH*0.08,

                                ),
                                Text('Músicas\nCurtidas',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    childCount: 3
                ),
              ),
              Text('Tocadas Recentemente',
                style: TextStyle(
                    color: Colors.white,
                    fontSize:sizeH*0.04,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),
        ),
        Container(
          height: sizeH*0.3,

          child: ListView.custom(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            childrenDelegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index){
                  double padR=0;
                  index==3?padR=sizeW*0.05:padR=sizeW*0.025;
                  return Padding(
                    padding: EdgeInsets.only(left:sizeW*0.05,right:padR),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: sizeH*0.17,
                          height: sizeH*0.17,
                          decoration: BoxDecoration(
                              color:Color(0xff1D1B26),
                              borderRadius: BorderRadius.circular (sizeW*0.01)

                          ),
                          margin: EdgeInsets.only(bottom: sizeH*0.01),
                        ),
                        Text('Playlist',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: sizeH*0.02
                          ),)
                      ],
                    ),
                  );
                },
                childCount: 4
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: sizeW*0.05),
          child: Text('Recomendado para hoje',
            style: TextStyle(
                color: Colors.white,
                fontSize:sizeH*0.04,
                fontWeight: FontWeight.bold
            ),),
        ),
        Container(
          height: sizeH*0.4,

          child: ListView.custom(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            childrenDelegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index){
                  double padR=0;
                  index==3?padR=sizeW*0.05:padR=sizeW*0.025;
                  return Padding(
                    padding: EdgeInsets.only(left:sizeW*0.05,right:padR),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: sizeH*0.25,
                          height: sizeH*0.25,
                          decoration: BoxDecoration(
                              color:Color(0xff1D1B26),
                              borderRadius: BorderRadius.circular (sizeW*0.01)

                          ),
                          margin: EdgeInsets.only(bottom: sizeH*0.01),
                        ),
                        Text('Titulo Album',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: sizeH*0.02
                          ),)
                      ],
                    ),
                  );
                },
                childCount: 4
            ),
          ),
        ),
      ],
    );
  }
}
