import 'package:firebloc/models/nota.dart';
import 'package:firebloc/values/tema.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
 
 List<Nota> misNotas =[
  Nota(titulo:'Titutlo 1', Contenido:'Contenimdo de la numero 1'),
Nota(titulo:'Titutlo 2', Contenido:'Contenimdo de la numero 2'),
Nota(titulo:'Titutlo 3', Contenido:'Contenimdo de la numero 3'),
Nota(titulo:'Titutlo 4', Contenido:'Contenimdo de la numero 4'),
 ];


  @override

  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(title: const Text('Firebloc')),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              showModalBottomSheet(
                context: context,
                 builder: (BuildContext context) {

                  return ModalNuevaNota();
                } ); 
            },
            child: Icon(Icons.add),
            ),
        body: ListView (
          children: [
            for (Nota nota in misNotas)
            ListTile(
              title: Text(nota.titulo!),
              subtitle: Text(nota.Contenido!),
            ),

            
          ],
      
        ),
          );
  }
}

class ModalNuevaNota extends StatefulWidget {

  @override
  State<ModalNuevaNota> createState() => _ModalNuevaNotaState();
}

class _ModalNuevaNotaState extends State<ModalNuevaNota> {

final TextEditingController _tituloController = new TextEditingController();
 final TextEditingController _ContenidoController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      

      
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      //height: 300,
      color: celeste,
      child: Form(
        child: Column(
        children: [
         TextFormField(
          controller: _tituloController,
          decoration: const InputDecoration(labelText: 'Titulo de la nota'),
          ),
          TextFormField(
          decoration: const InputDecoration(
            labelText: 'Contenido',
          ),
          maxLines: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Nota agregada correctamente'),
                    ),
                  );
                },
                 child: Text('Aceptar'),
              ),
                SizedBox(width: 10),
                 ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                 child: Text('Cancelar'),
              ),
            ],
          )
        ],
      )),
      
    );
  }
}

//minuto 8:30 de primer video en delante no se en que parte va ya que hace un corte
@override
void dispose(){
  //this._ContenidoController.dispose();
  //this._tituloController.dispose();
  //super.dispose();
}
//}