import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softbd/Component/animated_bar.dart';
import 'package:softbd/View/primary.dart';
import '../Controller/Home_controller.dart';
import '../Models/Home_model.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            "images/check.png",
                            width: MediaQuery.of(context).size.width / 1.0,
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                blurRadius: 8,
                                spreadRadius: 2,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          " My Project \n Name",
                          style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 98, 98, 1),
                          ),
                        ),
                      ]),
                ],
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 8,
                            spreadRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Color.fromRGBO(0, 98, 98, 1),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 15,
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[200],
      ),
      drawer: sidebar(),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              _buildProfileCard(),
              SizedBox(height: 20),
              _buildImportantUpdate(),
              SizedBox(height: 20),
              _buildSavedServices(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: primColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipOval(
                      child: Image.asset(
                        "images/Nabil.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Zakir Hossen",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("Service Recipient",
                          style: TextStyle(
                              color: Color.fromRGBO(229, 231, 235, 1))),
                      Text("+880 1766659142",
                          style: TextStyle(
                              color: Color.fromRGBO(227, 159, 11, 1))),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 98, 98, 1),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                  child: Text(
                    "Update Your KYC",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _infoItem("Services", controller.tradeLicenses.value),
                  _infoItem("Trade Licenses", controller.tradeLicenses.value),
                  _infoItem("Holding TAX", controller.holdingTax.value),
                  _infoItem("Certificates", controller.certificates.value),
                ],
              )),
        ],
      ),
    );
  }

  Widget _infoItem(String title, int value) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 8,
                spreadRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Text(value.toString().padLeft(2, '0'),
              style: TextStyle(
                  color: primColor,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18)),
        ),
        Text(title, style: TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  Widget _buildImportantUpdate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Important Update",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        SizedBox(height: 10),
        Obx(
          () => Column(
            children: controller.savedServices
                .map(
                  (update) => _serviceCard(update),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _updateCard(UpdateModel update) {
    Color color = update.status == "Expired" ? Colors.red : Colors.orange;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${update.status} - ${update.title}",
                style: TextStyle(color: color, fontWeight: FontWeight.bold)),
            Text(update.id,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(update.message, style: TextStyle(color: Colors.black54)),
            Align(
              alignment: Alignment.centerRight,
              child:
                  TextButton(onPressed: () {}, child: Text(update.buttonText)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSavedServices() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Saved Services",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Obx(() => Column(
              children: controller.savedServices
                  .map(
                    (service) => _serviceCard(service),
                  )
                  .toList(),
            )),
      ],
    );
  }

  Widget _serviceCard(ServiceModel service) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(service.title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(service.name, style: TextStyle(color: Colors.black54)),
            SizedBox(height: 5),
            Text(service.id,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: () {}, child: Text("Renew Now")),
            )
          ],
        ),
      ),
    );
  }
}
