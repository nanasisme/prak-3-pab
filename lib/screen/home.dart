import 'package:flutter/material.dart';
import 'package:praktikum3/screen/view.dart';

class HomePg extends StatelessWidget {
  const HomePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
         decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/home.png'), fit: BoxFit.cover),
      ),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                        color: Color(0xFF5D8A9E),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        image: DecorationImage(image: AssetImage('assets/prof.png'))
                       
                            ),
                    
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Color(0xFF5D8A9E),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                  ),
            ],
          ),
        ),
      ),
      ),

      
      
      



      // body: Container(
      //   color: Colors.blueGrey,
      //     child: Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text("Home Page",
      //           style: TextStyle(
      //             fontFamily: 'Times New Roman',
      //             fontSize: 25,
      //             color: Colors.white
      //           ),
      //           ),
      //           ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPg(),));}, child: Text("Detail")),
      //           ElevatedButton(onPressed: () {}, child: Text("Profile")),
      //           ElevatedButton(onPressed: () {}, child: Text("Dashboard"))
      //         ],
      //       ),
      //     ),
      // ),
    );
  }
}