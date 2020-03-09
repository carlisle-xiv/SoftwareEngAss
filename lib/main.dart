//import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(new MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
//  '/Home': (BuildContext context) => new Homepage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,//remove the debug tag from the app
      home: new LoginPage(),//Homescreen
      theme: new ThemeData(  //the default theme of the app
        primarySwatch: Colors.blue
      ),
      routes: routes,
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
 State createState() => new LoginPageState();

}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  var _passwordVisible;// define a var variable

  @override     //overriding the initState method
  void initState(){ //This is the initial state when the widget will be created
    super.initState();
    _passwordVisible = true;//in the initial state let the user be able to see the password
    _iconAnimationController = new AnimationController( //define the animation

        vsync: this,
      duration: new Duration(milliseconds: 400)//let the animation run for 400 milliseconds
    );
        _iconAnimation = new CurvedAnimation(//the type of animation
        parent: _iconAnimationController,
        curve: Curves.easeOut//
    );
        _iconAnimation.addListener(()=> this.setState((){}));
        _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      //backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,//make sure the image asset fits the entire screen
        children: <Widget>[
          new Image(
            image: new AssetImage('images/girl1.jpeg'),//The background image of the app
            fit: BoxFit.cover,//make it fit the entire screen
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,//Darken the image in the background
          ),


          new ListView(
            //mainAxisAlignment: MainAxisAlignment.center,// main axis is column
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,

              ),
              Form(

               child: Theme(
                 data: new ThemeData(
                   brightness: Brightness.dark, primarySwatch: Colors.teal,
                   inputDecorationTheme: new InputDecorationTheme(
                     labelStyle: new TextStyle(
                       color: Colors.teal, fontSize: 20.0,

                     )
                   )
                 ),
                 child: Container(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       new TextFormField(
                       decoration: new InputDecoration(
                         labelText: 'Email adress',
                         hintText: 'Enter Email adress',
                         prefixIcon: Icon(Icons.account_circle),
                         border: new OutlineInputBorder(
                           borderRadius: new BorderRadius.circular(15.0)
                         )
                       ),
                         keyboardType: TextInputType.emailAddress,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0),
                         child: new TextFormField(
                           decoration: new InputDecoration(
                             labelText: 'Password',
                               hintText: 'Enter your password',
                               prefixIcon: Icon(Icons.lock),
                               suffixIcon: IconButton(
                                 icon: Icon(
                                   _passwordVisible ? Icons.visibility : Icons.visibility_off, //_passwordVisible is
                                 ),
                                 onPressed: (){
                                   setState(() {
                                     _passwordVisible = !_passwordVisible;

                                   });
                                 },
                               ),


                               border: new OutlineInputBorder(
                                   borderRadius: new BorderRadius.circular(15.0)
                               )
                           ),
                           keyboardType: TextInputType.text,
                           obscureText: !_passwordVisible,


                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top: 30.0),

                       ),

                          ButtonTheme(
                            minWidth: 400.0,
                            height: 45.0,
                            child: new RaisedButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                color: Colors.teal,
                                textColor: Colors.black87,
                                splashColor: Colors.tealAccent,
                                child: Text('Login'),
                              onPressed: (){

                              },
                            ),
                          ),

                       Container(
                         padding: EdgeInsets.only(top: 15.0,),
                         child: new FlatButton(
                           splashColor: Colors.teal,
                           child: Text('Create new Account',
                           style: TextStyle(
                             color: Colors.teal,
                              fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                 decoration: TextDecoration.underline,//underline the text
                             )
                           ),
                          onPressed: (){
                            print('button has been pressed');//do this when the button is pressed
                          },
                                    ),
                                   )
                                 ],
                                )
                               )
                             ),
                           ),
                          ]
                       )
                     ]
                   ),
                 );


  }

}/*
Widget getImageAsset(){
  AssetImage assetimage = AssetImage('images/images1.jpg');
  Image newImage = Image(image: assetimage, width: 300.0, height: 300.0,);
  return Container(child: newImage,);

}*/


