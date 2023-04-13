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
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
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
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: "Password",
                    ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },

                  child: AnimatedContainer(
                    duration:Duration(milliseconds:900),
                    width: changeButton? 50:150,
                    height: 50,
                   
                    decoration:BoxDecoration(
                      // shape:changeButton? BoxShape.circle : BoxShape.rectangle,
                          color:Colors.deepPurple,
                          borderRadius: BorderRadius.circular(changeButton? 50:8),
                          
                        ),
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
    );
  }
}