/*
Nombre de la escuela: Universidad Tecnológica Metropolitana
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del maestro: Chuc Uc Joel Ivan
Nombre del Alumno: Abraham Enrique Herrera Caro
Cuatrimestre: 5
Grupo: C
Parcial: 1 
Actividad 2
*/
import "dart:io";
void main() {
  double SalarioFijo;
  double HorasExtras;
  int ParseHoras;
  var Horastrabajadas;
  int ActasAdmin = 0;
  print ("Bienvenido a nuestro sistema de calculo de salarios");
  try{
    do{
  print("Por favor Introduzca las horas trabajadas");
  Horastrabajadas = stdin.readLineSync();
  ParseHoras = int.parse(Horastrabajadas);
  
  if (ParseHoras<=40)
  {
    SalarioFijo=ParseHoras*120;
  } else 
  {
    SalarioFijo=40*120;
    HorasExtras=ParseHoras-40;
    SalarioFijo=SalarioFijo+(HorasExtras*175);
  }
  print("Su salario es de:$SalarioFijo");
  if (ParseHoras<27)
  {
    ActasAdmin = ActasAdmin + 1;
    print("No tiene las suficientes horas trabajadas... Por lo tanto se le levantará un acta administrativa");
    print("Si llega a 2 actas administrativas ustéd será despedido");
    print("usted lleva $ActasAdmin actas administrativas");
    if (ActasAdmin == 2)
    {
      print("usted tiene $ActasAdmin actas administrativas por lo que usted esta despedido...");
    }
  }

  
  }while (ActasAdmin != 2);
  }
  on Exception catch(_){
    print ("Formato invalido... intentelo de nuevo");
  }
}

