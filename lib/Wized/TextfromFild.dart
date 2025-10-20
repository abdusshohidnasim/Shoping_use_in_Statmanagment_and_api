import 'dart:async';

import 'package:flutter/material.dart';

Card TextFromFilt({required String LabelText, Icon? Icon,VoidCallback? onTab }) {
  return Card(

    child: InkWell(
      onTap: onTab,

      child: TextFormField(
        
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: LabelText,
          labelStyle: TextStyle(
            color: Color(0xff7C7C7C),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          filled: true,
          fillColor: Colors.white,
          suffix: Icon,
        ),
      ),
    ),
  );
}
