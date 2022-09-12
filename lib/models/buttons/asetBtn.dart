import 'package:flutter/material.dart';
import 'package:kalokola_form/models/styles/appcolor.dart';

asetButton(widthX, heightsX, onClick) {
  return MaterialButton(
    onPressed:
      onClick,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    color: AppColor().mainColor,
    minWidth: widthX,
    height: heightsX,
    child: Text(
      "Submit",
      style: TextStyle(color: AppColor().submainColor),
    ),
  );
}
