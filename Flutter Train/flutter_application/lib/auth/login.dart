import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/signup.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(top: 90, right: 200),
            child: Text(
              ("LogIn Form"),
              style: TextStyle(fontSize: 30),
            )),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 100, left: 10),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2),
                    hintText: "UserName",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    ("if you don't have an account"),
                    style: TextStyle(fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("signuppage");
                    },
                    child: Text(
                      ("SignUp"),
                      style: TextStyle(color: Colors.redAccent, fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 200,
                  height: 50,
                  color: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("signuppage");
                    },
                    child: Text(
                      ("Login"),
                      style: Theme.of(context).textTheme.headlineLarge,
                      //TextStyle(color: Colors.white)
                    ),
                  ))
            ],
          )),
        )
      ]),
    );
  }
}
