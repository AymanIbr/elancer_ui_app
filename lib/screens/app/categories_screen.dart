import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10
      ),
      itemBuilder: (context , index){
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );
  }
}


// body: GridView(
//   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//   scrollDirection: Axis.vertical,
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//     crossAxisSpacing: 10,
//     mainAxisSpacing: 10,
//     // mainAxisExtent: 100,
//     childAspectRatio: 100/170
//   ),
//   children: [
//     Container(
//       color: Colors.blue.shade300,
//     ),
//     Container(
//       color: Colors.red.shade300,
//     ),
//     Container(
//       color: Colors.yellow.shade300,
//     ),
//
//   ],
// ),