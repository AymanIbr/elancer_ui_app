import 'package:flutter/material.dart';


class SecoundScreen extends StatelessWidget {
  const SecoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
        ),
        itemBuilder: (context,index){
          return Card(
            elevation: 5,
          );
        });
  }
}
