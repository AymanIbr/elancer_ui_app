import 'package:elancer_ui_app/widgets/home_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late PageController _pageController ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.8,initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      children: [

        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 190,
          ),
          child: PageView.builder(
              controller: _pageController,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int PageIndex){
                // if(PageIndex == 2){
                //   _pageController.animateToPage(0, Duration: (seconds: 1), curve: curve)
                // }
              },
              itemBuilder: (context,index){
                return Card(
                  margin: EdgeInsetsDirectional.only(end: index != 2 ? 10 : 0),
                  color: index %2 == 0 ? Colors.black38 : Colors.yellow.shade200,
                  child: Text('Container $index'),
                );
              }),
        ),

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
    );
  }
}

