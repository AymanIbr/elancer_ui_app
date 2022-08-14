import 'package:flutter/material.dart';




class PageViewIndecatore extends StatelessWidget {
  const PageViewIndecatore({
    Key? key,
   required this.isCurrentPage,
     this.marginEnd = 0,
  }) : super(key: key);

  final bool isCurrentPage;
  final double marginEnd ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginEnd),
      height: 4,
      width: 18,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFF6A90F2) : Color(0xFFD3EBCD),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
