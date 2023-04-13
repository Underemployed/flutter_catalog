
import "package:flutter/material.dart";
import "package:todoapp/pages/utils/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;

  final _formKey=GlobalKey<FormState>();
    moveToHome(BuildContext context) async {
  if(_formKey.currentState != null && _formKey.currentState!.validate())    {
                        setState(() {
                          changeButton=true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        setState(() {
                          changeButton=false;
                        });
                      }
                      return null;
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/hey.png"),
              SizedBox(
                height:20,
              ),
              Text(
              "Welcome $name",
               style:TextStyle(
                fontSize: 25,
                color: Colors.black,
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

                      validator: (value){
                        if(value==null||value.isEmpty){
                          return "Username Cannot be empty";
                        }
                        return null;
                      },

                      onChanged:(value) {
                        name=value;
                        setState(() {});
                        },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value){
                        if(value==null || value.isEmpty){
<<<<<<< HEAD
                          return "Password Cannot be empty";
                        }else if(value.length<8){
                          return "Password should be atleast 8 digits";
=======
                          return "Username Cannot be empty";
                        }else if(value.length<6){
                          return "password should have  atleast 6 digits";
>>>>>>> b3c72b888a78e744e5621159b4dde396c6111016
                        }
                        return null;
                      },
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: "Password",
                      ),
                      
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material
                  (
                     
                    borderRadius: BorderRadius.circular(changeButton? 50:8),
                    color:Colors.deepPurple,
               
                            
                    child: InkWell(
                      onTap: () => moveToHome(context),
                  
                      child: AnimatedContainer(
                        duration:Duration(milliseconds:1000),
                        width: changeButton? 50:150,
                        height: 50,
                       
                       
                        child:Center(
                          child: changeButton?
                          Icon(
                            Icons.done,
                            color: Colors.white,
                          ) 
                          :
                           Text("Login",style:TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 17,
                            
                             ),),
                             
                        )
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed:(){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                    
                  //   child: Text("Login",style:TextStyle(
                  //     fontSize: 17,
                  //   )),
                  //   style: TextButton.styleFrom(minimumSize: Size(150
                  //   , 50)),
                  
                  //   )
                ],
              ),
            ),
              
              
            ],
            
            
          ),
        ),
      ),
    );
  }
}