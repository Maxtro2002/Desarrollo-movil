import 'dart:io';

void main(List<String> args) {
  var hombreSoltero = 0;
  var hombres = 0;

  var edadPromedio = 0;
  var hombresCasados = 0;

  var mujerSoltera = 0;
  var personasSolteras = 0;

  print("Ingrese la cantidad de pacientes de la semana: ");
  int pacientes = int.parse(stdin.readLineSync().toString());
  print("=====================================================");

  for(int i = 0; i < pacientes; i++){
    print("""Ingrese cual es su sexo: 
  1. Hombre  
  2. Mujer""");

  int sexo = int.parse(stdin.readLineSync().toString());

  if(sexo == 1){
    hombres++;
  }

  print("""ingrese su estado civil: 
  1. Soltero  
  2. Casado
  3. Viudo""");

  int estCivil = int.parse(stdin.readLineSync().toString());
  if(estCivil == 1){
    personasSolteras++;
  }

  if(estCivil == 1 && sexo == 1){
    hombreSoltero++;
  }

  if(estCivil == 1 && sexo == 2){
    mujerSoltera++;
  }

  print("ingrese cual es su edad: ");

  int edad = int.parse(stdin.readLineSync().toString()); 
  
  if(sexo == 1 && estCivil == 2){
    edadPromedio += edad;
    hombresCasados++;
  }

  print("=====================================================");
  }
  var calcProm = ((hombreSoltero*100)/hombres);
  print("El porcentaje de hombres solteros es de: $calcProm");

  var calcEdad = edadPromedio/hombresCasados;
  print("La edad promedio de los hombres casados es de: $calcEdad");

  var calcMujeresSolteras = ((mujerSoltera*100)/personasSolteras);
  print("El porcebtaje de mujeres solteras en relacion a las personas solteras es de: $calcMujeresSolteras");
  
}