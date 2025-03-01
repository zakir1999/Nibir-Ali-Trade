import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd/Component/infor_card.dart';
import 'package:softbd/View/primary.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Sidebar Container
          Container(
            width: 288,
            height: double.infinity,
            color: primColor,
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  InfoCard(name: "Home", icon: Icons.home),
                  const SizedBox(height: 10),
                  InfoCard(name: "My Profile", icon: Icons.person_outline),
                  const SizedBox(height: 10),
                  InfoCard(name: "My Orders", icon: Icons.list_alt_sharp),
                  const SizedBox(height: 10),
                  InfoCard(
                      name: "Payment Assistance", icon: Icons.payment_outlined),
                  const SizedBox(height: 10),
                  InfoCard(name: "Payment History", icon: Icons.history),
                  const SizedBox(height: 10),
                  InfoCard(name: "My Complaint", icon: Icons.report_problem),
                  const SizedBox(height: 10),
                  InfoCard(name: "FAQ", icon: Icons.question_answer),
                  const SizedBox(height: 10),
                  InfoCard(name: "Settings", icon: Icons.settings),
                  const SizedBox(height: 50),
                  InfoCard(name: "Language", icon: Icons.language),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_forward_rounded, color: primColor),
                          const SizedBox(width: 5),
                          Text(
                            "Logout",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: primColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
              ),
              padding: const EdgeInsets.all(4),
              child: IconButton(
                icon: const Icon(Icons.close, size: 20, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}











// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:softbd/Component/infor_card.dart';
// import 'package:softbd/View/primary.dart';

// class sidebar extends StatelessWidget {
//   const sidebar(Positioned positioned, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 288,
//         height: double.infinity,
//         color: primColor,
//         child: SafeArea(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 40,
//               ),
//               InfoCard(
//                 name: "Home",
//                 icon: Icons.home,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(name: "My Profile", icon: Icons.person_outline),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(name: "My Orders", icon: Icons.list_alt_sharp),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(
//                   name: "Payment Assistance", icon: Icons.payment_outlined),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(
//                   name: "Payment History", icon: Icons.horizontal_split_sharp),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(
//                   name: "My Complain", icon: Icons.my_library_books_rounded),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(name: "FAQ", icon: Icons.question_answer),
//               SizedBox(
//                 height: 10,
//               ),
//               InfoCard(name: "Settings", icon: Icons.settings_rounded),
//               SizedBox(
//                 height: 50,
//               ),
//               InfoCard(name: "Language", icon: Icons.language_rounded),
//               SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                 ),
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: 100,
//                   padding: EdgeInsets.fromLTRB(0, 8, 12, 8),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.arrow_forward_rounded,
//                         color: primColor,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         "Logout",
//                         style: TextStyle(
//                             fontStyle: FontStyle.italic,
//                             color: primColor,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




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
