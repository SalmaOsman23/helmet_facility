class PostsDM {
  String cityName;
  String imagePath;
  PostsDM({required this.cityName, required this.imagePath});

  static List<Map> list = [
    {"cityName": "Noor City", "imagePath": "assets/images/noorcity.png"},
    {
      "cityName": "Mountain View",
      "imagePath": "assets/images/mountainview.jpg"
    },
    {"cityName": "Maadi", "imagePath": "assets/images/maadi.jpg"},
    {"cityName": "Sheraton", "imagePath": "assets/images/sheraton.jpg"},
    {"cityName": "6th of October", "imagePath": "assets/images/october.jpg"},
    {"cityName": "Zamalek", "imagePath": "assets/images/zamalek.jpg"},
  ];
}
