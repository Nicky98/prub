import 'package:flutter/material.dart';

class aplicacionpz extends StatelessWidget{

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //navegador
      appBar: navegador(),
      body: _cuerpo(),
      );
  }
Widget _nave(){
  return Container(
    color: Colors.brown,
     child:Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(child: Text("Corn",style: TextStyle(color: Colors.white),),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.brown,),
              RaisedButton(child: Text("Tomato",style: TextStyle(color: Colors.white),),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.brown,),
              RaisedButton(child: Text("Potato",style: TextStyle(color: Colors.white),),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.brown,),
            ],
          )
  );
}
  Widget navegador(){
        return AppBar(
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("MENU"),
          centerTitle: true,backgroundColor: Colors.brown,
          
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right:12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search)
                ],
              ),
            )
          ],
    );
  }
  Widget _cuerpo(){
    return Container(
      margin: EdgeInsets.only(left: 0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _nave(),
            _tarjeta("Pizza Carnivora", "pizza1.png"),
            _tarjeta("Pizza Hawaiana", "pizza2.png"),
            _tarjeta("Pizza Queso", "pizza3.png"),
            _tarjeta("Pizza Margarita", "pizza4.png"),
            _tarjeta("Pizza Diavola", "pizza5.png"),
            //cuerpo

          ],
        ),
      ),
      );
  }
  Widget _tarjeta(String nomima, String nomi){
    return Container(
      margin: EdgeInsets.only(top: 12,bottom: 1,left: 12,right: 12),
          child: Card(
            elevation: 12,
            child: Row(
              children: <Widget>[
                _image("$nomi"),
                Container(
                  padding: EdgeInsets.only(top: 43,bottom: 33),
                  margin: EdgeInsets.only(left:15,bottom: 12),
                  child: Container(
                    margin: EdgeInsets.only(right:0),
                    child: Column(
                    children: <Widget>[
                      Center(child:Text("$nomima",style:TextStyle(fontStyle: FontStyle.italic,fontSize: 18,
                      fontWeight:FontWeight.bold ))),
                      _letrima(), 
                    ],
                  )
                  ),
                )
              ],
            ),
       ),
    );
  }
  //imagenes pizzas
  Widget _image(String nombre){
    return Container(
      margin: EdgeInsets.only(left: 12),
      child: Column(
      children: <Widget>[
        Image(
          image: AssetImage("assets/img/$nombre"),
          height: 110,width: 104,
          fit: BoxFit.cover,)
      ],
    )
    );
  }
  
  Widget _iconos1(){
        return Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 2),
                child: Row(
                  children: <Widget>[
                    //icons start modific
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    Icon(Icons.star,color: Colors.grey,size: 18,),
                    Icon(Icons.star,color: Colors.grey,size: 18,),    
              ],
            ),
          ),

        ],
      ),
     
    );
  }
  Widget _letrima(){
    return Container(
      child:Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:12),
            child: Column(
              //
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("Calificacion :",style: TextStyle(color: Colors.grey),),
                Text("Puntos :",style: TextStyle(color: Colors.grey),),
                Text("Atencion :",style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
           Container(
             margin: EdgeInsets.only(top: 12),
            child: Column(
              children: <Widget>[
                _iconosn(),
                _iconosn(),
                _iconosn(),
              ],
            ),
          )
        ],
      ),

    );
  }
  Widget _iconosn(){
    return Container(
      margin: EdgeInsets.only(right:0),
      child: Row(
                  children: <Widget>[
                   Icon(Icons.star, size: 18,color:Colors.orange),
                   Icon(Icons.star, size: 18,color:Colors.orange),
                   Icon(Icons.star, size: 18,color:Colors.orange),
                   Icon(Icons.star, size: 18,color:Colors.orange),
                   Icon(Icons.star, size: 18,color:Colors.orange),
                  ],
                ),
    );
  }



}