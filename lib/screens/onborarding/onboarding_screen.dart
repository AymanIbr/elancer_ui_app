import 'package:elancer_ui_app/widgets/on_boarding_content.dart';
import 'package:elancer_ui_app/widgets/page_view_indecator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcher/matcher.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  late PageController _pageController;
  int _CurrentPage = 0 ;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Column(
       children: [
         SafeArea(
           child: Align(
             alignment: AlignmentDirectional.topEnd,
             child: Visibility(
               visible: _CurrentPage < 2 ,
               replacement: TextButton(
                 onPressed: (){
                   Navigator.pushReplacementNamed(context, '/login_screen');
                 },
                 child: Text('START'),
               ),
               child: TextButton(
                 onPressed: (){
                 _pageController.animateToPage(2,
                     duration: Duration(seconds: 1),
                     curve: Curves.easeInOutBack);
               },
                   child: Text('SKIP'),
               ),
             ),
           ),
         ),
         Expanded(
           child: PageView(
             physics: BouncingScrollPhysics(),
             onPageChanged: (int CurrentPage){
               setState(()=> _CurrentPage = CurrentPage);
             },
             controller: _pageController,
           // scrollDirection: Axis.vertical,
           children: [
             OnBoundingContent(image:'image_1',title: 'Welcome!',),
             OnBoundingContent(image:'image_2',title: 'Add To Card',),
             OnBoundingContent(image:'image_3',title: 'Enjoy purchase',),
           ],
         ),
         ),
         SizedBox(height: 30,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             PageViewIndecatore(isCurrentPage: _CurrentPage == 0,marginEnd: 15,),
             PageViewIndecatore(isCurrentPage: _CurrentPage == 1,marginEnd: 15,),
             PageViewIndecatore(isCurrentPage: _CurrentPage == 2,),
           ],
         ),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             IconButton(
                 onPressed: (){
                   if(_CurrentPage > 0 ){
                     _pageController.previousPage(
                         duration: Duration(seconds: 1),
                         curve: Curves.easeInOutBack
                     );
                   }
                 },
                 icon: Icon(Icons.arrow_back_ios),
             ),
             IconButton(
               onPressed: (){
                 if(_CurrentPage < 2 ){
                   _pageController.nextPage(
                       duration: Duration(seconds: 1),
                       curve: Curves.easeInOutBack
                   );
                 }
               },
               icon: Icon(Icons.arrow_forward_ios),
             ),
           ],
         ),
         SizedBox(height: 25,),
         Visibility(
           visible: _CurrentPage == 2,
           maintainState: true,
           maintainSize: true,
           maintainAnimation: true,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30),
             child: DecoratedBox(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black45,
                     offset: Offset(0,3),
                     blurRadius: 6

                   ),
                 ],
                 gradient: LinearGradient(
                   colors: [
                     Color(0xFF839AA8),
                     Color(0xFF635666)
                   ]
                 )
               ),
               child: ElevatedButton(
                   onPressed: (){
                     Navigator.pushReplacementNamed(context, '/login_screen');
                   },
                   style: ElevatedButton.styleFrom(
                     primary: Colors.transparent,
                     elevation: 0,
                    
                     minimumSize: Size(double.infinity, 50),
                   ),
                   child: Text('Start')
               ),
             ),
           ),
         ),
         // Row(
         //   mainAxisAlignment: MainAxisAlignment.center,
         //   children: [
         //     TabPageSelectorIndicator(
         //         backgroundColor: _CurrentPage  == 0 ? Colors.blue : Colors.grey,
         //         borderColor: _CurrentPage == 0 ? Colors.orange : Colors.transparent,
         //         size: 10
         //     ),
         //     TabPageSelectorIndicator(
         //         backgroundColor: _CurrentPage == 1 ? Colors.blue : Colors.grey,
         //         borderColor: _CurrentPage == 1 ? Colors.orange : Colors.transparent,
         //         size: 10
         //     ),
         //     TabPageSelectorIndicator(
         //         backgroundColor: _CurrentPage == 2 ? Colors.blue : Colors.grey,
         //         borderColor: _CurrentPage == 2 ? Colors.orange : Colors.transparent,
         //         size: 10
         //     ),
         //   ],
         // ),
         SizedBox(height: 30,)
       ],
     ),
    );
  }
}


