import 'package:flutter/material.dart';

class ListKostScreen extends StatelessWidget {
  const ListKostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c3e50),
      body: 
        Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Color(0xff2c3e50),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: Colors.transparent,
                ),
                Text(
                  "List Kost",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),
                TextField(
                decoration: InputDecoration(
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Colors.white),
                  ),
                  suffixIcon: Icon(Icons.search, color: Colors.white,),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                ),
                textAlignVertical: TextAlignVertical.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: 
            Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Colors.white
              ),
              // margin: const EdgeInsets.only(),
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).viewInsets.bottom,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kost $index", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          const Text("Kamar mandi luar | Kasur Single ", style: TextStyle(fontSize: 13 ),),
                          const Text("Rp 1.500.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                        ]
                      ),
                    ],
                  ),
                ),
              ),
            )
          )
          
        ],
      )
    );
  }
}