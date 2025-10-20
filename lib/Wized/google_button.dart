import 'package:flutter/material.dart';



InkWell GoogleButton({required String text,VoidCallback? onTab}){

  return InkWell(
    onTap: onTab,
    child: Container(
      alignment: Alignment.center,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xff5383EC),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("assets/images/google.png"),height: 30,),
          Text(
            text,
            style:const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(""),
        ],
      ),
    ),
  );
}