import 'package:flutter/material.dart';


class Contador extends StatefulWidget
{
  @override
  createState()=>  _ContadorState();
  
    
  
}


class _ContadorState extends State<Contador>
{
 final _estilo = new TextStyle(fontSize: 25);
  int  _conteo=0;
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
            Text('Numero clics:', style: _estilo),
            Text('$_conteo',style: _estilo,)
          ],
        ),
      ),
      floatingActionButton: _crearBotones()

      /*FloatingActionButton (
        child: Icon(Icons.add),
        onPressed: ()
        {
         
          setState(() {
             _conteo++;
          });
        },
      ),*/,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

   Widget _crearBotones()
   {
     return Row(
       children: <Widget>
       [
         FloatingActionButton(child: Icon(Icons.add_alarm), onPressed:_resetear),
         Expanded(child:SizedBox(width:5.0)),
         FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
         SizedBox(width:5.0),
         FloatingActionButton(child: Icon(Icons.add), onPressed:_agregar),
       ],
      
     );
     
   }


     void _agregar()
     {
       setState(() {
         _conteo++;
       });
       
     }

     void _sustraer()
     {
       setState(() => _conteo--);
     }

     void _resetear()
     {
       setState(() => _conteo=0);
     }
}