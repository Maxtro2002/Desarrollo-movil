void main(List<String> args) async{
  print("inicio");
  String value = await getStudents();
  print(value);
  print("fin");

}

Future getStudents(){
  return Future.delayed(Duration(seconds: 2),(){
    return("Hola mundo");
  }); 
}