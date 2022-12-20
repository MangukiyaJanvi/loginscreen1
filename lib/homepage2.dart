import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String email="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: txtEmail,
                onChanged: (Value){
                  setState(() {
                    email = Value;
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.mail_outlined),
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                controller: txtPassword,
                onChanged: (Value){
                  setState(() {
                    password = Value;
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                alignment: Alignment.center,
                child: Text("Submit"),
              ),
              SizedBox(height: 5),
              Text("Email = $email"),
              SizedBox(height: 5),
              Text("Password = $password"),
            ],
          ),
        ),
      ),
    );
  }
}
