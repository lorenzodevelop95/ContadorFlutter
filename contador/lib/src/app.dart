import 'package:contador/src/pages/PaginaInicio.dart';
import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';


class MyApp extends StatelessWidget
{
  @override
  Widget build( context)
  {
    return MaterialApp
    
    (
      home: Center
      (
        //child: PaginaInicio(),
        child: Contador(),
      ),
      

    );

  }




}