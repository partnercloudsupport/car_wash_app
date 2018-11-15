import 'package:flutter/material.dart';
import 'package:panelmex_app/services/auth.dart';

class Register extends StatefulWidget {
  static String routerName = '/register';
  
  @override
  _RegisterState createState() => new _RegisterState();
 }
class _RegisterState extends State<Register> {
  final _authService = new AuthService();

  static final fullNameTextController = new TextEditingController();
  static final emailTextController = new TextEditingController();
  static final passwordTextController = new TextEditingController();

  Future _handleSignUp() async {
    await _authService.signUp(emailTextController.text, passwordTextController.text);
  }

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/dream-car.jpg'),
      ),
    );

    final name = TextField(
      decoration: InputDecoration(
        labelText: 'Nombre y Apellido',
      ),
      controller: fullNameTextController,
    );

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Correo'
      ),
      controller: emailTextController,
    );

    final passwordOne = TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Contrasena'
      ),
      controller: passwordTextController,
    );
    final passwordTwo = TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Repita la contrasena'
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: _handleSignUp,
          color: Colors.lightBlueAccent,
          child: Text('Nueva cuenta', style: TextStyle(color: Colors.white),),
        ),
      ),
    );

    /*final forgotLabel = FlatButton(
      child: Text('Ya tengo una cuenta', style: TextStyle(color: Colors.black54),),
      onPressed: () {

      },
    );*/

    return new Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 25.0,),
            name,
            SizedBox(height: 8.0,),
            email,
            SizedBox(height: 8.0,),
            passwordOne,
            SizedBox(height: 8.0,),
            passwordTwo,
            SizedBox(height: 20.0,),
            loginButton,
            //forgotLabel,
          ],
        ),
      ),
    );
  }
}