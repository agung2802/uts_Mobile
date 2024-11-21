import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xff2c3e50),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Divider(
                color: Colors.transparent,
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff696969),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.person, color: Colors.white, size: 100,),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xff2c3e50),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(Icons.edit, color: Colors.white,),
                    ),
                  ),
                ]
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Text(username, style: const TextStyle(color: Color(0xff2c3e50), fontSize: 20, fontWeight: FontWeight.bold),),
              const Text("E-mail", style: TextStyle(color: Color(0xff2c3e50), fontSize: 20),),
            ]
          ),
          const Divider(
            color: Colors.transparent,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.blueGrey,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 0),
              child: Text(
                "General Settings",
                style: TextStyle(color: Color(0xff2c3e50), 
                fontSize: 20, 
                fontWeight: FontWeight.bold),
              ),
            )
          ),
          const Divider(
            color: Colors.transparent,
          ),
          
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.person, color: Colors.grey, size: 30,),
                      SizedBox(width: 20,),
                      Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Account Details", style: TextStyle(color: Color(0xff696969), fontSize: 18),),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.key, color: Colors.grey, size: 30,),
                      SizedBox(width: 20,),
                      Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Change Password", style: TextStyle(color: Color(0xff696969), fontSize: 18),),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.translate, color: Colors.grey, size: 30,),
                      SizedBox(width: 20,),
                      Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Language", style: TextStyle(color: Color(0xff696969), fontSize: 18),),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
                
              ]
            ),
          ),

          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.9,
            color: Colors.blueGrey,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 0),
              child: Text(
                "Information",
                style: TextStyle(color: Color(0xff2c3e50), 
                fontSize: 20, 
                fontWeight: FontWeight.bold),
              ),
            )
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.phone, color: Colors.grey, size: 30,),
                      SizedBox(width: 20,),
                      Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("About App", style: TextStyle(color: Color(0xff696969), fontSize: 18),),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.edit_note_sharp, color: Colors.grey, size: 30,),
                      SizedBox(width: 20,),
                      Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Terms & Conditions", style: TextStyle(color: Color(0xff696969), fontSize: 18),),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.lock, color: Colors.grey, size: 30,),
                      SizedBox(width: 20,),
                      Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Privacy Policy", style: TextStyle(color: Color(0xff696969), fontSize: 18),),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.transparent,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Logout", style: TextStyle(color: Color(0xff696969), fontSize: 18, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                
              ]
            ),
          ),
        ],
      )
    );
  }
}