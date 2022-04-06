import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pays = TextEditingController();
  TextEditingController tel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 270.0,

              child: Column(
                children: [
                  Container(
                    height: 100.0,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 30, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Saisissez votre numéro de téléphone',
                        style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),),
                        Icon(
                          Icons.more_vert,

                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60.0,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 30),
                    child: Center(
                      child: Text('Whatsapp va envoyer un sms pour vérifier votre numéro de téléphone',
                      style:TextStyle(fontSize: 19.0,color: Colors.black.withOpacity(0.7))
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      controller: pays,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "Votre pays",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.5)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.green, width: 2)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.green, width: 2))),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.all(0.0),
                    child: TextField(

                      keyboardType: TextInputType.phone,
                      controller: tel,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: "Votre numéro de téléphone",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.5)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.green, width: 2)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.green, width: 2))),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 60),
              height: 150.0,

              child: Column(
                children: [
                  Container(
                    height: 40,
                    color: Colors.green,
                    margin: EdgeInsets.only(bottom: 20),
                    child: TextButton(
                      onPressed: null,
                      style: ButtonStyle(),
                      child: Text('SUIVANT',style: TextStyle(color: Colors.white)),

                    ),
                  ),
                  Container(
                    height: 80.0,
                    color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 40.0),
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Vous devez être âgé(e) de 16 ans au moins pour vous enregistrer.Apprenez-en plus sur le fonctionnement de whatsapp avec les entités Facebook ',
                    style: TextStyle(fontSize: 13.0),)
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

