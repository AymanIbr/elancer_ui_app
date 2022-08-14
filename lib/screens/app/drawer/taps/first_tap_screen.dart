import 'package:flutter/material.dart';

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder:(context,index){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text('title'),
          );
        }
    );
  }
}
