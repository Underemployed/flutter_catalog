import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png"),
          SizedBox(
            height:20,
          ),
          Text(
          "LoginPage",
           style:TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  labelText: "Username",
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  
                  hintText: 'Enter Username',
                  labelText: "Username",
                  ),
              ),
              ElevatedButton(
                onPressed:(){},
                child: Text("Login"),
                style: TextButton.styleFrom(),
                )
            ],
          ),
        ),


        ],
        
        
      ),
    );
  }
}