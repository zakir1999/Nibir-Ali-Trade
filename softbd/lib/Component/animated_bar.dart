import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd/Component/infor_card.dart';
import 'package:softbd/View/primary.dart';

class sidebar extends StatelessWidget {
  const sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: primColor,
        child: SafeArea(
            child: Column(
          children: [
            InfoCard(
              name: "Home",
              imageAssetPath: 'images/home.png',
            ),
          ],
        )),
      ),
    );
  }
}




// Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             decoration: BoxDecoration(color: primColor,),
//             child: Text(
//               'Drawer Header',
//               style: TextStyle(color: Colors.white, fontSize: 24),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.home, color: primColor,),
//             title: Text('Home'),
//             onTap: () {},
//           ),
//         ],
//       ),
//     );
