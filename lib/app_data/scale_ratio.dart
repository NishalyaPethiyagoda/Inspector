import 'package:flutter/material.dart';

class Screen {
  //
  var height_factor = 1; 
  var length_factor = 1; 

  var height, width;

  double ScreenHeight(){
    return MediaQueryData().size.height;
  }
  
  double ScreenWidth(){
    return MediaQueryData().size.width;
  }

}
