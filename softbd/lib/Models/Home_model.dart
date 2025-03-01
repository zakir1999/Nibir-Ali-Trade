class ServiceModel {
  final String title;
  final String name;
  final String id;

  ServiceModel({required this.title, required this.name, required this.id});
}

class UpdateModel {
  final String status;
  final String title;
  final String id;
  final String message;
  final String buttonText;

  UpdateModel(
      {required this.status,
      required this.title,
      required this.id,
      required this.message,
      required this.buttonText});
}
