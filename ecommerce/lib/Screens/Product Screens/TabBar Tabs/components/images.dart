import 'package:flutter/material.dart';

class images extends StatelessWidget {
  const images({
    Key? key,
    required this.image1,
  }) : super(key: key);

  final String image1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 250,
      width: 150,
      child: Image.asset(image1,fit: BoxFit.cover,),
    );
  }
}
