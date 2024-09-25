import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyWidget());
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   bool darkMode = false;

//   void initState() {
//     super.initState();
//     print("Ini State 1 Kali");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Ini Build");
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         backgroundColor: darkMode ? Colors.black : Colors.white,
//         appBar: AppBar(
//           title: const Text("Flutter"),
//           elevation: 0,
//           backgroundColor: Colors.amber,
//         ),
//         body: Center(
//           child: Text(
//             'Hello',
//             style: const TextStyle(fontSize: 50, color: Colors.amber),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               darkMode = !darkMode;
//             });
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo Home Page'),
            elevation: 0,
            backgroundColor: Colors.amber,
          ),
          body: _buildGrid()),
    );
  }

  Widget _buildGrid() {
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 4,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: List.generate(100, (index) {
        return const Image(
            image: AssetImage("assets/cat.jpeg"), fit: BoxFit.cover);
      }),
    );
  }
}

// Widget _buildList() {
//   return ListView(
//     children: [
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//       _tile("Budi", "08123456789", AssetImage("assets/UserIcon.png")),
//     ],
//   );
// }

// ListTile _tile(String title, String subtitle, AssetImage image) {
//   return ListTile(
//     leading: CircleAvatar(
//       backgroundImage: image,
//     ),
//     title: Text(title),
//     subtitle: Text(subtitle),
//   );
// }

// class MyTelurGulung extends StatelessWidget {
//   const MyTelurGulung({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             const Text(
//               "Telur Gulung",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             Image.asset(
//               "assets/Resep-Telur-Gulung.webp",
//               width: 200,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Telur Gulung merupakan makanan yang sering dijual di depan sekolah, makanan ini sangat mudah dimakan, dan mudah juga untuk dibuat.",
//               style: TextStyle(fontSize: 17),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 Expanded(
//                     child: Container(
//                   child: const Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.amber),
//                       Icon(Icons.star, color: Colors.amber),
//                       Icon(Icons.star, color: Colors.amber),
//                       Icon(Icons.star, color: Colors.amber),
//                     ],
//                   ),
//                 )),
//                 Container(
//                     child: const Text(
//                   "200 Review",
//                   style: TextStyle(fontSize: 20),
//                 ))
//               ],
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
