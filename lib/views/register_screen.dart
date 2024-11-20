import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  var rememberMe = false;
  

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
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey There!", 
                        style: Style().heading
                      ),
                      Text("Ready to", style: Style().heading),
                      Text("Reconnect?", style: Style().heading),
                    ]
                  ),

                  TextField(
                    autocorrect: false,
                    decoration: Style().fieldStyle( label: "Email or Phone Number"),

                  ),
                  TextField(
                    autocorrect: false,
                    decoration: Style().fieldStyle( label: "Full Name"),
                  ),
                  TextField(
                    autocorrect: false,
                    decoration: Style().fieldStyle( label: "Username"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        autocorrect: false,
                        decoration: Style().fieldStyle( label: "Password", icon: Icons.remove_red_eye),
                      ),
                      const Text("Must Contain a number and least of 6 characters", style: TextStyle(color: Color(0xff696969), fontSize: 12),)
                  ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        autocorrect: false,
                        decoration: Style().fieldStyle( label: "Confirm Password", icon: Icons.remove_red_eye),
                      ),
                      const Text("Must Contain a number and least of 6 characters", style: TextStyle(color: Color(0xff696969), fontSize: 12),)
                  ]),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xff2c3e50)),
                      minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                    ),
                    child: const Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
                    Image.asset("images/login-1.png", width: 0.3 * MediaQuery.of(context).size.width,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text("Already a user?"),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/login');
                    }, child: const Text("Log In", style: TextStyle(fontWeight: FontWeight.bold),) )
                ])
              ]
            )
            
            
          ]
        ),
      )
      
    );
  }
}

class Style {
  TextStyle heading = GoogleFonts.lato(
                    fontSize: 44,
                    height: 0.95,
                    fontWeight: FontWeight.w900,
                    textStyle: const TextStyle(color: Color(0xff2c3e50)),
                  );

  InputDecoration fieldStyle ( {required String label, IconData? icon}) {
    return InputDecoration(
      labelText: label,
      focusColor: const Color(0xff696969),
      suffixIcon:  icon == null ? null : Icon(icon as IconData?, color: Colors.grey,),
    );
  }
}