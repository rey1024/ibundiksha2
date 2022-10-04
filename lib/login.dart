import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mainmenu.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController =  TextEditingController();
  final  passwordController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
           SingleChildScrollView(
            child: Center(
              child: Column(

               mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child:Image(image:AssetImage("./images/logo_undiksha.png" )),
                  ),

                  Text("Koperasi Undiksha" ,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 20,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          TextField( decoration: InputDecoration(
                            labelText: "Username",
                          ),
                          controller: usernameController,
                          ),
                        TextField( decoration: InputDecoration(
                            labelText: "Password"
                        ),
                          controller: passwordController,
                        ),
                          SizedBox(
                            height: 10,
                          ),

                          TextButton(
                              onPressed: ()=>
                              {
                                if (usernameController.text == 'resika' &&
                                    passwordController.text == 'resika') {
                                        Navigator.pushReplacement (
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const MainMenu()),
                                        )
                                } else {
                                    print(passwordController.text)

                                    },
                              },

                              child: Text("Login"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              minimumSize: MaterialStateProperty.all(Size(200, 40))
                            ),

                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Daftar Internet Banking"),
                              Text("Lupa Password?"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),

      bottomSheet: Container(
        alignment: Alignment.center,
        color: Colors.blue,
      child: Text("Copyright @ 2022 by rey1024",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
          color: Colors.white
      ),),
      width: double.infinity,
      height: 50,),
    );
  }
}
