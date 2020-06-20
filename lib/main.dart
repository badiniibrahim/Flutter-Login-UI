import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login UI Bleu",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }

}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }


}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Login UI Bleu"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildTitle(),
          SizedBox(height: 15.0),
          buildEmailTextField(),
          SizedBox(height: 20.0),
          buildPasswordTextField(),
          SizedBox(height: 10.0),
          buildForgotPassword(),
          SizedBox(height: 20.0),
          buildCheckbox(),
          SizedBox(height: 20.0),
          buildLoginButton(),
          SizedBox(height: 20.0),
          buildOr(),
          SizedBox(height: 20.0),
          buildSignInWith(),
          SizedBox(height: 20.0),
          buildSocial(),
          SizedBox(height: 40.0),
          buildNotAccount()


        ],
      ),
    );
  }
}

Widget buildTitle(){
  return Container(
    padding: EdgeInsets.only(top: 40.0),
    child: Center(
      child: const Text("Sign in", style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0
      ),),
    ),
  );
}

Widget buildEmailTextField(){
  return Container(
    padding: EdgeInsets.only(left: 20.0,right: 20.0),
    child: Column(
      children: [
          TextField(
            style: TextStyle(
              color: Colors.white
            ),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              fillColor: Colors.white,
              labelText: "Email",
              labelStyle: TextStyle(
                color: Colors.white
              ),
              hintStyle: TextStyle(
                color: Colors.white
              ),
              hintText: "Email",
              border: OutlineInputBorder(

              )
            ),
            keyboardType: TextInputType.emailAddress,

          )
      ],
    ),
  );
}

Widget buildPasswordTextField(){
  return Container(
    padding: EdgeInsets.only(left: 20.0,right: 20.0),
    child: Column(
      children: [
        TextField(
          obscureText: true,
          style: TextStyle(
              color: Colors.white
          ),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              fillColor: Colors.white,
              labelText: "Password",
              labelStyle: TextStyle(
                  color: Colors.white
              ),
              hintStyle: TextStyle(
                  color: Colors.white
              ),
              hintText: "Password",
              border: OutlineInputBorder(

              )
          ),
          keyboardType: TextInputType.emailAddress,

        )
      ],
    ),
  );
}

Widget buildForgotPassword(){
  return Container(
      alignment: Alignment(1.0, 0.0),
      padding: EdgeInsets.only(right: 20.0, top: 10.0),
      child: InkWell(
        child: const Text("Forgot Passsword", style: TextStyle(
          color: Colors.white
        ),),
      ),

  );
}

Widget buildCheckbox(){
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Row(
      children: [
        const Checkbox(
            value: false,
            onChanged: null,
            focusColor: Colors.white,
        ),
        const Text("Remember me", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),)
      ],
    ),
  );
}

Widget buildLoginButton(){
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    height: 40.0,
    child: Material(
      borderRadius: BorderRadius.circular(20.0),
      shadowColor: Colors.white,
      elevation: 7.0,
      color: Colors.white,
      child: GestureDetector(
        onTap: () => {},
        child: Center(
          child: const Text("LOGIN", style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    ),
  );
}

Widget buildOr(){
  return Center(
    child: const Text("-OR-", style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold
    )),
  );
}

Widget buildSignInWith(){
  return Center(
    child: const Text("Sign in with", style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
    )),
  );
}

Widget buildSocial(){
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2,0),
                      blurRadius: 6.0
                  )
                ],
                image: DecorationImage(image: AssetImage('assets/facebook.jpg'))
            ),
          ),
        ),
        SizedBox(width: 20.0),
        Container(
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2,0),
                      blurRadius: 6.0
                  )
                ],
                image: DecorationImage(image: AssetImage('assets/google.jpg'))
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildNotAccount(){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ? ", style: TextStyle(
          color: Colors.white
        )),
        const Text('Sign up', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ))
      ],
    ),
  );

}



