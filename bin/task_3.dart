import 'dart:convert';

void main() {
  String data = '''
    {
    "greeting":"Welcome to Dart!",
    "topics":[
      "Operations",
      "Loops",
      "Classes",
      "Streams"
    ],
    "version":3.6,
    "level": "intermediate",
    "basedOOP": true
  }
  ''';

  WelcomeDart welcomeDart = WelcomeDart.fromJson(jsonDecode(data));
  print(welcomeDart);
  print("\n----------------------------------------------\n");
  String getBackData = jsonEncode(welcomeDart.toJson());
  print(getBackData);
}
class WelcomeDart {
  late String greeting;
  late List topics;
  late double version;
  late String level;
  late bool basedOOP;

  WelcomeDart.fromJson(Map<String, dynamic> json) {
    greeting = json["greeting"];
    topics = json["topics"];
    version = json["version"];
    level = json["level"];
    basedOOP = json["basedOOP"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "greeting": greeting,
      "topics": topics,
      "version": version,
      "level": level,
      "basedOOP": basedOOP
    };
    return map;
  }

  @override
  String toString() {
    return "$greeting \n\ntopics: $topics \nversion: $version \nlevel: $level \nbasedOOP: $basedOOP";
  }

}
