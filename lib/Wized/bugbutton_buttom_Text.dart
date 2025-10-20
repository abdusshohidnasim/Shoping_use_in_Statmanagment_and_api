import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_api_statmanagment/Style/colors.dart';

Row ButtonButtomText ({required String fristext,required String secendtext,VoidCallback? onTab,required MainAxisAlignment mainAxisAlignment}){
  return  Row(
    mainAxisAlignment: mainAxisAlignment,
    children: [
      Text(
        fristext,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      InkWell(
        onTap: onTab,
        child: Text(
          secendtext,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: CustomColors.SecendaryColors,
          ),
        ),
      ),
    ],
  );
}