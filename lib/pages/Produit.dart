import 'package:flutter/material.dart';

class Produit extends StatelessWidget {
  const Produit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () { 
            Navigator.pushNamed(context, '/');
           },
          child: Icon(
            Icons.home,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Icon(
                Icons.contact_mail,
                size: 26.0,
              ),
            )
          ),
        ],
      backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
          ),
          Text("nos jouets: ", style: TextStyle(fontSize: 20),),
          Container(
            margin: EdgeInsets.all(15),
          ),
          Image(
            image: NetworkImage('https://s.cdnshm.com/catalog/fr/t/1061198098/wall-e-robot-wall-e-eve-en-pvc-collection-de-figurines-d-action-modele.jpg')
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Text("figurine du film Wall-E, 30x40x10 cm, platique. ne pas mettre à la porté des moins de 3ans") 
          ),
          Container(
            margin: EdgeInsets.all(15),
          ),

          Image(
            image: NetworkImage('https://s.cdnshm.com/catalog/fr/t/1061198098/wall-e-robot-wall-e-eve-en-pvc-collection-de-figurines-d-action-modele.jpg')
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Text("figurine du film Wall-E, 30x40x10 cm, platique. ne pas mettre à la porté des moins de 3ans") 
          ),
          Container(
            margin: EdgeInsets.all(15),
          ),

          Image(
            image: NetworkImage('https://s.cdnshm.com/catalog/fr/t/1061198098/wall-e-robot-wall-e-eve-en-pvc-collection-de-figurines-d-action-modele.jpg')
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Text("figurine du film Wall-E, 30x40x10 cm, platique. ne pas mettre à la porté des moins de 3ans") 
          ),
          
      ]),
    ),),
    
    );
  }
}