abstract class Construct{
  late List<String> tools;
  String? address;

  build(List<String> tools);
  destroy(List<String> tools);
}

class GreenWorld extends Construct {
  int? id;
  String? name;
  List<String>? properties;

  addMoreTools(String tool){
    tools.add(tool);
  }

  @override
  build(List<String> tools) {
    print("Please be patient building...\n");
    Stream<String> values = callElements(tools);
    values.listen((event) {
      print(event);
    },onDone: ()=> print("\nTayyor"));
  }

  @override
  destroy(List<String> tools) {
    print("Please be patient building...\n");
    Stream<String> values = callElements(tools);
    values.listen((event) {
      print(event);
    },onDone: ()=> print("\nTayyor"));
  }

}

class SkyBuilders extends Construct{
  int? id;
  String? name;
  List<String>? properties;

  addMoreTools(String tool){
    tools.add(tool);
  }

  @override
  build(List<String> tools) {
    print("Please be patient building...\n");
    Stream<String> values = callElements(tools);
    values.listen((event) {
      print(event);
    },onDone: ()=> print("\nTayyor"));
  }

  @override
  destroy(List<String> tools) {
    print("Please be patient building...\n");
    Stream<String> values = callElements(tools);
    values.listen((event) {
      print(event);
    },onDone: ()=> print("\nTAYYOR"));
  }
}

Stream<String> callElements(List<String> tools) async*{
  for(var i in tools){
    yield i;
    await Future.delayed(Duration(milliseconds: 500));
  }
}


void main(){
  List<String> myTools = ["Sement", "G'isht", "Tom","Bo'yoq"];
  SkyBuilders skyBuilders = SkyBuilders();
  skyBuilders.tools = myTools;
  skyBuilders.build(myTools);
  skyBuilders.addMoreTools("Bolta");

}

