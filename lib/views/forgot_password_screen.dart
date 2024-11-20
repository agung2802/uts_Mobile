import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordscreen extends StatefulWidget {
  const ForgotPasswordscreen({super.key});

  @override
  State<ForgotPasswordscreen> createState() => _ForgotPasswordscreenState();
}

class _ForgotPasswordscreenState extends State<ForgotPasswordscreen> {
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
                      Text("Lost your", style: heading),
                      Text("Password?", style: heading),
                      const Text("Enter your contact information or username to receive a password reset link", style: TextStyle(color: Color(0xff696969), fontSize: 13, overflow: TextOverflow.fade),),
                    ]
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  const TextField(
                    autocorrect: false,
                    decoration: InputDecoration(
                      labelText: "Email or Phone Number",
                      focusColor: Color(0xff696969),
                      fillColor: Color(0xff696969),
                      hoverColor: Color(0xff696969)
                    ),

                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),

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
                    child: const Text("Forgot Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
                  const Text("Don't have an account?"),
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
}