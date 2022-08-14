import 'package:elancer_ui_app/screens/app/drawer/taps/first_tap_screen.dart';
import 'package:elancer_ui_app/screens/app/drawer/taps/secound_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecoundFavoriteScreen extends StatefulWidget {
  const SecoundFavoriteScreen({Key? key}) : super(key: key);

  @override
  State<SecoundFavoriteScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<SecoundFavoriteScreen> with SingleTickerProviderStateMixin  {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secound Favorite'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
         children: [
           Column(
             children: [
               CircleAvatar(radius: 40,),
               Text('Title Here',
                 textAlign: TextAlign.center,
                 style: GoogleFonts.montserrat(
                     fontSize: 18,
                     fontWeight: FontWeight.bold
                 ),
               ),
               Text('SubTitle Here',
                 textAlign: TextAlign.center,
                 style: GoogleFonts.montserrat(
                   fontSize: 14,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               SizedBox(height: 10,),
               TabBar(
                 controller: _tabController,
                 labelColor: Colors.black,
                 onTap: (int tabIndex){
                   setState(()=> _tabController.index = tabIndex);
                 },
                 tabs: [
                   Tab(text: 'First',),
                   Tab(text: 'Secound',),
                 ],
               ),
             ],
           ),
           IndexedStack(
             index: _tabController.index,
             children: [
               Visibility(
                   visible: _tabController.index == 0,
                   child: FirstTabScreen()
               ),
               Visibility(
                   visible: _tabController.index == 1,
                   child: SecoundScreen()
               ),
             ],
           ),
         ],
      ),
    );
  }
}
