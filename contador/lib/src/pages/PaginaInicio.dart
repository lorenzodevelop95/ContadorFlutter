import 'package:flutter/material.dart';

class PaginaInicio extends StatelessWidget
{

  final estilo = new TextStyle(fontSize: 25);
  final  conteo=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      ( 
        title: Text('TITULO'), 
        centerTitle: true,       
      ),
      body: Center
      (

        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Text('Numero clics:', style: estilo),
            Text('$conteo',style: estilo,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton
      (
        child: Icon(Icons.add),
        onPressed: ()
        {
         
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

}