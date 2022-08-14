import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // padding: EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context,index){
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.person),
            title: Text('Title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          );
        },
        separatorBuilder: (context , index){
          return Divider();
        },
        itemCount: 10);
  }
}
