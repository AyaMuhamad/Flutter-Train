import 'package:flutter/material.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(top: 90, right: 200),
            child: Text(
              ("Sign up"),
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
                    ("if you have an account"),
                    style: TextStyle(fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("loginpage");
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
                    onPressed: () {},
                    child: Text(
                      ("Sign up"),
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
