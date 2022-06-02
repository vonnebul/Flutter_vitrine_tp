import 'package:flutter/material.dart';

class MonAcceuil extends StatelessWidget {
  const MonAcceuil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () { 
            Navigator.pushNamed(context, '/produit');
           },
          child: Icon(
            Icons.toys,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bonjour à tous", style: TextStyle(fontSize: 25),),
            Padding(padding: EdgeInsets.all(20)),
            Text("bienvenue sur mon site de vente de jouet", style: TextStyle(fontSize: 20))
          ],
        ),
      ),

    );
  }
}
