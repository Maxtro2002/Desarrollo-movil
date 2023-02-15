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

  while (pacientes <= 0) {
    print("""=====================================================
Por favor ingrese un valor positivo mayor a 0
=====================================================""");

    print("Ingrese la cantidad de pacientes de la semana: ");
    pacientes = int.parse(stdin.readLineSync().toString());
  }

  print("=====================================================");

  for (int i = 0; i < pacientes; i++) {
    var sexo = 0;
    var estCivil = 0;
    var edad = 0;

    print("""Ingrese el sexo del paciente # ${i+1}: 
  1. Hombre  
  2. Mujer""");

    sexo = int.parse(stdin.readLineSync().toString());

    while (sexo != 1 && sexo != 2) {
      print("""=====================================================
Por favor ingrese uno de los valores que se especifican
=====================================================\n""");
      print("""Ingrese el sexo del paciente # ${i+1}: 
  1. Hombre  
  2. Mujer""");

      sexo = int.parse(stdin.readLineSync().toString());
    }

    if (sexo == 1) {
      hombres++;
    }

    print("""ingrese el estado civil del paciente # ${i+1}: 
  1. Soltero  
  2. Casado
  3. Viudo""");

    estCivil = int.parse(stdin.readLineSync().toString());

    while (3 < estCivil || estCivil <= 0) {
      print("""=====================================================
Por favor ingrese uno de los valores que se especifican
=====================================================\n""");
      print("""ingrese el estado civil del paciente # ${i+1}: 
  1. Soltero  
  2. Casado
  3. Viudo""");

      estCivil = int.parse(stdin.readLineSync().toString());
    }

    if (estCivil == 1) {
      personasSolteras++;
    }

    if (estCivil == 1 && sexo == 1) {
      hombreSoltero++;
    }

    if (estCivil == 1 && sexo == 2) {
      mujerSoltera++;
    }
    print("ingrese la edad del paciente # ${i+1}: ");

    edad = int.parse(stdin.readLineSync().toString());

    while (edad <= 0) {
      print("""=====================================================
Por favor ingrese una edad positiva
=====================================================\n""");

      print("ingrese la edad del paciente #${i+1}: ");

      edad = int.parse(stdin.readLineSync().toString());
    }

    if (sexo == 1 && estCivil == 2) {
      edadPromedio += edad;
      hombresCasados++;
    }

    print("=====================================================");
  }
  var calcProm = ((hombreSoltero * 100) / hombres);
  print("El porcentaje de hombres solteros es de: $calcProm");

  var calcEdad = edadPromedio / hombresCasados;
  print("La edad promedio de los hombres casados es de: $calcEdad");

  var calcMujeresSolteras = ((mujerSoltera * 100) / personasSolteras);
  print(
      "El porcebtaje de mujeres solteras en relacion a las personas solteras es de: $calcMujeresSolteras");
}
