import 'package:elancer_ui_app/widgets/home_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondHomeScerrn extends StatelessWidget {
  const SecondHomeScerrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second'),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            HomeSection(
                title: 'Most Recent', onPressed: (){}
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: 100
              ),
              child: GridView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 130/90,
                  ),

                  itemBuilder: (context,index){
                    return Container(
                      height: 100,
                      width: 100,
                      color: Colors.black45,
                    );
                  }),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  HomeSection(title: 'Favorite Products', onPressed: (){}),
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 6,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ) ,
                      itemBuilder: (context,index){
                        return Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      }
                  ),
                  SizedBox(height: 20,),
                  HomeSection(title: 'Offers', onPressed: (){}),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsetsDirectional.only(bottom: index == 5 ? 0 : 15),
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0,0),
                                color: Colors.black45,
                                blurRadius: 4,
                              )
                            ],

                          ),

                        );
                      }
                  ),

                  // ConstrainedBox(
                  //   constraints: BoxConstraints(
                  //     maxHeight: 100
                  //   ),
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //       itemCount: 10,
                  //       itemBuilder: (context ,index){
                  //         return Container(
                  //           margin: EdgeInsetsDirectional.only(end: index != 9 ? 10 : 0),
                  //           height: 100,
                  //           width: 100,
                  //           color: Colors.black45,
                  //         );
                  //       }
                  //     ,),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

