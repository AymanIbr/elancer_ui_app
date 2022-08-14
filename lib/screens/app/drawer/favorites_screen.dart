import 'package:elancer_ui_app/screens/app/drawer/taps/first_tap_screen.dart';
import 'package:elancer_ui_app/screens/app/drawer/taps/secound_tab_screen.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> with SingleTickerProviderStateMixin  {

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Favorite'),
        bottom: TabBar(
          isScrollable: false,
          controller: _tabController,
          tabs: [
           Tab(text : 'First'),
            Tab(text : 'second'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:  [
          FirstTabScreen(),
          SecoundScreen(),
        ],
      ),
    );
  }
}
