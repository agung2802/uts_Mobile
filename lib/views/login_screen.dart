import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String username="";
  String password="";
  var user = [
      {
      "username": "admin",
      "password": "admin",
      },
      {
      "username": "user",
      "password": "user",
      },
      {
      "username": "Agung",
      "password": "Rizki",
      }
    ];

    bool _isObscure = true;
    
  var rememberMe = false;
  TextStyle heading = GoogleFonts.lato(
                    height: 0.95,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    textStyle: const TextStyle(color: Color(0xff2c3e50)),
                  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/login-2.png", width: 0.4 * MediaQuery.of(context).size.width, ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey There!", 
                        style: heading
                      ),
                      Text("Let's Get You", style: heading),
                      Text("Settled In", style: heading),
                      const Text("Im waiting for you, please enter your detail", style: TextStyle(color: Color(0xff696969)),),
                    ]
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  TextField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: "Username, Email or Phone Number",
                      focusColor: Color(0xff696969),
                      fillColor: Color(0xff696969),
                      hoverColor: Color(0xff696969)
                    ),
                    onChanged: (value) => {
                      setState(() {
                        username = value;
                      })
                    },

                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  TextField(
                    autocorrect: false,
                    obscureText: _isObscure,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      focusColor: const Color(0xff696969),
                    ),
                    onChanged: (value) => {
                      setState(() {
                        password = value;
                      })
                    },
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            rememberMe = !rememberMe;
                          });
                        },
                        child: Row(
                          children: [
                            Checkbox(
                              value: rememberMe, 
                              onChanged: (value){
                                setState(() {
                                  rememberMe = value!;
                                });
                              }, 
                              activeColor: Colors.black, 
                            ),
                            const Text("Remember Me")
                          ],
                        ),
                      ),
                      const Spacer(),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/forgot-password');
                      }, child: const Text("Lupa Password?", style: TextStyle(color:Color(0xff696969)),))
                      
                    ],
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  
                  ElevatedButton(
                    onPressed: login,
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xff2c3e50)),
                      minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                    ),
                    child: const Text("Log In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("images/login-1.png", width: 0.3 * MediaQuery.of(context).size.width),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text("New here?"),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/register');
                    }, 
                    child: const Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold),) )
                ])
              ]
            )
            
            
          ]
        ),
      )
      
    );
  }

  login(){
    if (user.any((user) => user['username'] == username)) {
        if (user.any((element) => element['username'] == username && element['password'] == password,)) {
          Navigator.pushReplacementNamed(context, '/dashboard', arguments: username);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Wrong password or username"),
            ),
          );
        }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User not found"),
        ),
      );
    }
  }
}