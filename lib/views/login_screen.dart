import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  var rememberMe = false;
  TextStyle heading = GoogleFonts.lato(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masuk", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
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
                const Text("Im waiting for you, please enter your detail"),
              ]
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const TextField(
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username, Email or Phone Number"
              )
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const TextField(
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,)
              )
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
                Spacer(),
                TextButton(onPressed: (){}, child: const Text("Lupa Password?"))
                
              ],
            ),
            const Divider(
              color: Colors.transparent,
            ),
            
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/dashboard');
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
              ),
              child: const Text("Masuk"),
            )
          ]
        ),
      )
      
    );
  }
}