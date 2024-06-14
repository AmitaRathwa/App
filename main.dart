
import 'package:flutter/material.dart';

import 'modal.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
 final List _photos = [
   Data(image:"assets/images/img.jpg", text:"Attendance"),
   Data(image:"assets/images/img2.jpg", text:"Attendance"),
   Data(image:"assets/images/img3.jpg", text:"Attendance"),
   Data(image:"assets/images/img4.jpg", text:"Attendance"),
   Data(image:"assets/images/img5.jpg", text:"Attendance"),
   Data(image:"assets/images/img2.jpg", text:"Attendance"),
   Data(image:"assets/images/img4.jpg", text:"Attendance"),
   Data(image:"assets/images/img5.jpg", text:"Attendance"),
    ];

  MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Flutter Demo Home Page'),
        leading: Icon(Icons.account_circle),
        title: Text('Attendance Management '),
        actions: [
          //Icon(Icons.account_circle),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.logout),
          ),
          //Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.blue,


      ),

      // Image.asset('assets/images/img5.jpg',
      //     height: 200,
      //     scale: 2.5,
      //     // color: Color.fromARGB(255, 15, 147, 59),
      //     opacity:
      //     const AlwaysStoppedAnimation<double>(0.5)),

      // body: Container(
      //   width: 700,
      //     height: 260,
      //     child: Image.asset('assets/images/img5.jpg')),
      //


      body: Container(

            child: GridView.builder(
                  itemCount: _photos.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
                    itemBuilder: (context,index){
                  return Column(
                    children: [
                      Container(
                       width: double.infinity,
                        height: 200,
                        decoration:BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(15) ,
                          image: DecorationImage(
                            image: AssetImage(_photos[index].image),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),

                      Text (_photos[index].text)
                    ],
                  );
                    }
                ),

            ),




      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Hello, World!',
      //       ),
      //       Image.network('https://flutter.dev/images/flutter-logo-sharing.png'),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => SecondPage()),
      //           );
      //         },
      //         child: Text('Go to Second Page'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Page'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Second Page!'),
//       ),
//     );
//   }
// }