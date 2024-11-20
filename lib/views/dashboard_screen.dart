import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
      
      padding: const EdgeInsets.only(left: 30),
      children: [Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("images/dashboard.png", width: 150, ),
                  ],
                ),
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100,),
                    Text("Dashboard", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
                    Text("My Bill Next Month", style: TextStyle(fontSize: 15, color: Color(0xff696969)),),
                  ]
              ),
            ]
          ),
          const Text("Rp 1.500.000", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 50,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff2c3e50),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.attach_money, color: Colors.white, size: 40,),
                      Text("My Bill", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ],
                  ) 
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 50,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 92, 192, 205),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.attach_money, color: Color(0xff2c3e50), size: 40,),
                      Text("Transfer", style: TextStyle(color: Color(0xff2c3e50), fontSize: 18),),
                    ],
                  ) 
                )
              ]
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only( right: 30),
            height: 40,
            child: 
            const TextField(
              decoration: InputDecoration(
                floatingLabelAlignment: FloatingLabelAlignment.center,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                suffixIcon: Icon(Icons.search, color: Color(0xff696969),),
                hintText: "Search",
                hintStyle: TextStyle(color: Color(0xff696969)),
                contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              ),
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
          const SizedBox(height: 10,),
          const Text("Near You", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
          SizedBox(
            height: 150,
            child: 
            ListView.separated(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, index) => const VerticalDivider(width: 10,),
              itemBuilder: (context, index) => Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: index % 2 == 0 ? const Color.fromARGB(255, 92, 192, 205) : const Color(0xff2c3e50),
                )
              )
            )
          ),
          const Text("Best udget Boarding House", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
          SizedBox(
            height: 150,
            child: 
            ListView.separated(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, index) => const VerticalDivider(width: 10,),
              itemBuilder: (context, index) => Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: index % 2 == 0 ? const Color.fromARGB(255, 92, 192, 205) : const Color(0xff2c3e50),
                )
              )
            )
          )
        ]
      )]
    );
  }
}
// class DashboardScreen {
//   static Container screen(){
//     return Container(
//       padding: const EdgeInsets.only(left: 30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Image.asset("images/dashboard.png", width: 150, ),
//                   ],
//                 ),
//               const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 100,),
//                     Text("Dashboard", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
//                     Text("My Bill Next Month", style: TextStyle(fontSize: 15, color: Color(0xff696969)),),
//                   ]
//               ),
//             ]
//           ),
//           const Text("Rp 1.500.000", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
//           Padding(
//             padding: const EdgeInsets.only(right: 30),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 165,
//                   height: 70,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Color(0xff2c3e50),
//                   ),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.attach_money, color: Colors.white, size: 40,),
//                       Text("My Bill", style: TextStyle(color: Colors.white, fontSize: 18),),
//                     ],
//                   ) 
//                 ),
//                 Container(
//                   width: 165,
//                   height: 70,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     color: Color.fromARGB(255, 92, 192, 205),
//                   ),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.attach_money, color: Color(0xff2c3e50), size: 40,),
//                       Text("Transfer", style: TextStyle(color: Color(0xff2c3e50), fontSize: 18),),
//                     ],
//                   ) 
//                 )
//               ]
//             ),
//           ),
//           const SizedBox(height: 10),
//           Container(
//             padding: const EdgeInsets.only( right: 30),
//             height: 40,
//             child: 
//             const TextField(
//               decoration: InputDecoration(
//                 floatingLabelAlignment: FloatingLabelAlignment.center,
//                 border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//                 suffixIcon: Icon(Icons.search, color: Color(0xff696969),),
//                 hintText: "Search",
//                 hintStyle: TextStyle(color: Color(0xff696969)),
//                 contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
//               ),
//               textAlignVertical: TextAlignVertical.center,
//             ),
//           ),
//           const SizedBox(height: 10,),
//           const Text("Near You", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
//           SizedBox(
//             height: 150,
//             child: 
//             ListView.separated(
//               padding: const EdgeInsets.all(8),
//               scrollDirection: Axis.horizontal,
//               itemCount: 10,
//               separatorBuilder: (context, index) => const VerticalDivider(width: 10,),
//               itemBuilder: (context, index) => Container(
//                 width: 150,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: index % 2 == 0 ? const Color.fromARGB(255, 92, 192, 205) : const Color(0xff2c3e50),
//                 )
//               )
//             )
//           ),
//           const Text("Best udget Boarding House", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2c3e50)),),
//           SizedBox(
//             height: 150,
//             child: 
//             ListView.separated(
//               padding: const EdgeInsets.all(8),
//               scrollDirection: Axis.horizontal,
//               itemCount: 10,
//               separatorBuilder: (context, index) => const VerticalDivider(width: 10,),
//               itemBuilder: (context, index) => Container(
//                 width: 150,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: index % 2 == 0 ? const Color.fromARGB(255, 92, 192, 205) : const Color(0xff2c3e50),
//                 )
//               )
//             )
//           )
//         ]
//       )
//     );
//   }
// }