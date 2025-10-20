import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container LoginTopBackgrount({
  context,
  required String text,
  required String subtext,
}) {
  double Height = MediaQuery.of(context).size.height;
  double Width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.all(20),
    height: Height / 3,
    width: Width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/loginbackground.png"),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(""),
        Center(
          child: Image(
            image:const AssetImage("assets/images/gajor.png"),
            height: Height / 20,
          ),
        ),
       // Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subtext,
            style: const TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],)

      ],
    ),
  );
}
