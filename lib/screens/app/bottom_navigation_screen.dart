import 'package:elancer_ui_app/models/bn_screen.dart';
import 'package:elancer_ui_app/screens/app/categories_screen.dart';
import 'package:elancer_ui_app/screens/app/home_screen.dart';
import 'package:elancer_ui_app/screens/app/settings_screen.dart';
import 'package:elancer_ui_app/screens/app/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

   List<BnScreen> _screens = <BnScreen> [
    BnScreen(title: 'Home', widget: HomeScreen()),
     BnScreen(title: 'Users', widget: UsersScreen()),
     BnScreen(title: 'Category', widget: CategoryScreen()),
     BnScreen(title: 'Settings', widget: SettingScreen()),
  ];

  int _SelectPageIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_SelectPageIndex].title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Ayman',style: GoogleFonts.montserrat(),),
                accountEmail: Text('ayman@gmail.com',style: GoogleFonts.montserrat(),),
              currentAccountPicture: CircleAvatar(),
              otherAccountsPictures: [
                InkWell(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Future.delayed(Duration(microseconds: 500 ), (){
                  Navigator.pushNamed(context , '/frequent_screen');
                });
              },
              leading: Icon(Icons.question_answer),
              title: Text('FAQs'),
              subtitle: Text('Frequent Question'),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Future.delayed(Duration(microseconds: 500 ), (){
                  Navigator.pushNamed(context , '/secound_favorite_screen');
                });
              },
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              subtitle: Text('Favorite item'),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),

          ],
        ),
      ),
      body: _screens[_SelectPageIndex].widget ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int SelectPageIndex){
          setState(()=>_SelectPageIndex = SelectPageIndex);
        },

        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.montserrat(),
        selectedIconTheme: IconThemeData(
          color : Colors.black
        ),
      elevation: 20,

        unselectedItemColor: Colors.black,
        unselectedLabelStyle: GoogleFonts.montserrat(),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey.shade500
        ),


        currentIndex: _SelectPageIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.green.shade300,
            activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_max_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              // backgroundColor: Colors.yellow.shade300,
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outlined),
              label: 'Users'
          ),
          BottomNavigationBarItem(
              // backgroundColor: Colors.blue.shade300,
              activeIcon: Icon(Icons.category),
              icon: Icon(Icons.category_outlined),
              label: 'Category'
          ),
          BottomNavigationBarItem(
              // backgroundColor: Colors.pink.shade300,
              activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
