import 'package:flutter/material.dart';

import '../Style/colors.dart';

InkWell BigButton({required String text,VoidCallback? onTab}){

  return InkWell(
    onTap: onTab,
    child: Container(
      alignment: Alignment.center,
      height: 60,
      decoration: BoxDecoration(
        color: CustomColors.SecendaryColors,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style:const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ),
  );
}