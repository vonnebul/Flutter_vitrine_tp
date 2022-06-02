import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({ Key? key }) : super(key: key);

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
                Navigator.pushNamed(context, '/produit');
              },
              child: Icon(
                Icons.toys,
                size: 26.0,
              ),
            )
          ),
        ],
      backgroundColor: Colors.orange,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Nom d'utilisateur:", style: TextStyle(fontSize: 20, color: Colors.orange),),
          TextFormField(
            decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "nom d'utilisateur",
                ),
              validator: (value)
              {
                if(value == null || value.isEmpty)
                {
                  return "veuillez rentrer un nom correct";
                }
              },
            ),
             Container(
              margin: EdgeInsets.all(20),
            ),
            Text("Adresse email:", 
              style: TextStyle(
                fontSize: 20, color: Colors.orange
                ),
              ),
             TextFormField(
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Adresse email",
                ),
              validator: (value)
              {
                if(value == null || value.isEmpty)
                {
                  return "veuillez rentrer un prenom correct";
                }
              },
            ),
            Container(
              margin: EdgeInsets.all(20),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),),
                onPressed: ()=>{
                    Navigator.pushNamed(context, '/')

                  },
              
              child: Text("Validez le formulaire")
            )
        ],
      )
      ),
      
    );
  }
}

