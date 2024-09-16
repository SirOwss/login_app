import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
bool isSecured = true;
Widget EyeIcon = Icon(Icons.remove_red_eye_outlined);


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 158, 184, 197),
        appBar: AppBar(
          backgroundColor: Color(0xFF7735E9),
          title: const Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic
            ),
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/eic.png',
                  width: 250,
                  height: 350,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          prefixIcon: Icon(
                            Icons.account_circle_outlined
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          )
                        ),
                      ),

                      SizedBox(height:20,),






                      TextFormField(
                        obscureText: isSecured,


                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded
                          ),
                          suffixIcon: IconButton(
                            icon: EyeIcon, 
                            onPressed: () { 
                              setState(() {
                                isSecured = !isSecured;
                                if(isSecured == true){
                                  EyeIcon = Icon(Icons.remove_red_eye_outlined);
                                }else{
                                  EyeIcon = Icon(Icons.disabled_visible_outlined);
                                }
                              });
                             },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          )
                        ),
                      ),



                      SizedBox(height: 20,),

                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          padding: EdgeInsets.all(10),
                          width: 350,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.login_sharp,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8,),
                              Text("Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19
                              ),)
                            ],
                          ),
                        ),

                        onTap: (){
                          print("Login Pressed");
                        },

                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

      );
  }
}
