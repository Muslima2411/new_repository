import 'dart:convert';



void main() {
  String data = '''
    {
 "name": "PDP University",
 "students": ["Student1", "Student2", "Student3"],
 "id": 3,
 "isCertified": true,
 "courses": [
   ["Flutter", "Java", "Python"],
   ["AI", "Data Analytics", "Software Engineering"]
 ]
}

  ''';

  University university = University.fromJson(jsonDecode(data));
  print(university);
  String json = jsonEncode(university.toJson());
  print(json);

  String data2 = '''
  {
 "name": "Murod",
 "friends": [
   "Abdulloh",
   "Azizbek",
   "Bekzod"
 ],
 "profession": {
   "type": "Developer",
   "salary": 3500.80,
   "companyBranches": [
     "Yakkasaroy 1.6A",
     "Beruniy ko'chasi 15A",
     "Shaykhontohur, Labzak 70"
   ]
 }
}
  ''';

  Worker worker = Worker.fromJson(jsonDecode(data2));
  print(worker);
}


//task3

class University {
  late String name;
  late List<String> students;
  late int id;
  late bool isCertified;
  late List<List<String>> courses;

  University.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    students = List<String>.from(json["students"].map((e) => e));
    id = json["id"];
    isCertified = json["isCertified"];
    courses = List<List<String>>.from(
        json["courses"].map((e) => List<String>.from(e)));
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "students": students,
      "id": id,
      "isCertified": isCertified,
      "courses": courses
    };
    return map;
  }

  @override
  String toString() {
    return "$name \n\n$students \n$id \n$isCertified \n${courses.toString()}";
  }
}

//task4


class Worker{
  late String type;
  late List<String> friends;
  late Profession profession;

  Worker.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    friends = List<String>.from(json["friends"].map((e) => e));
    profession = Profession.fromJson(json["profession"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "friends": friends,
      "profession": profession.toJson()
    };
    return map;
  }


  @override
  String toString() {
    return "$type \n\n$friends \n\n${profession.toString()}";
  }

}
class Profession{
  late String developer;
  late double salary;
  late List<String> companyBranches;


  Profession.fromJson(Map<String, dynamic> json) {
    developer = json["developer"];
    companyBranches = List<String>.from(json["companyBranches"].map((e) => e));
    salary = json["salary"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "developer": developer,
      "companyBranches": companyBranches,
      "salary": salary,
    };
    return map;
  }

  @override
  String toString() {
    return 'Profession{type: $developer, salary: $salary, companyBranches: $companyBranches}';
  }

}




///i need to get water im thirsty]
/// bro baqirvoraman hozi yomon qitigim kevotti
