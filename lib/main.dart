import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  final nameController = TextEditingController();
  final drinkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Home'),
        centerTitle: true,
       ),
      body: Padding( 
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(children: [
            Text('Entre Your Name',
      style: TextStyle(
fontSize: 20
 ),),
 TextField( controller: nameController,),
 SizedBox(height: 20,),
 TextField( controller: drinkController,),
 SizedBox(height: 20,),
 RaisedButton( 
   onPressed: (){
     var name_entered = nameController.text;
     var drink_entered = drinkController.text;
     Navigator.push(context, MaterialPageRoute( 
       builder: (context) => Welcome(guestName:name_entered,
       guestDrink:drink_entered)
     ));
   },
   child: Text('GO!',
   style: TextStyle(fontSize: 20),),
 )
          ],),
        ),
      )
     
    );
  }
}

class Welcome extends StatelessWidget {

  final guestName;
  final guestDrink;
  Welcome({this.guestName,this.guestDrink});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('welcome'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome $guestName,'),
          Text('$guestDrink')
        ],
      ),
    );
  }
}