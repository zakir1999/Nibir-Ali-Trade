import 'package:get/get.dart';
import '../Models/Home_model.dart';

class HomeController extends GetxController {
  var tradeLicenses = 06.obs;
  var holdingTax = 02.obs;
  var certificates = 01.obs;

  var savedServices = <ServiceModel>[
    ServiceModel(
        title: "Trade License", name: "Jamin Traders", id: "3490 4490"),
  ].obs;

  var importantUpdates = <UpdateModel>[
    UpdateModel(
      status: "Expired",
      title: "Trade License",
      id: "3490 5513",
      message: "Your trade license has expired. Pay 200 taka to renew.",
      buttonText: "Renew Now",
    ),
    UpdateModel(
      status: "Important",
      title: "Holding Tax",
      id: "5/4A, Elah",
      message: "To get 300 Tk rebate, pay 3550 Tk within 7 days.",
      buttonText: "Pay Now",
    ),
  ].obs;
}
