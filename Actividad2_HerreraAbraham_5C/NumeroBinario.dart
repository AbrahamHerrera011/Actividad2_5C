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
  int parsedecimales;
  int residuo;
  String NUMBinario = "";
  var decimales;
try{
print("Ingrese el numero");
  decimales = stdin.readLineSync();
  parsedecimales = int.parse(decimales);

  while (parsedecimales != 0) 
  {
    residuo = parsedecimales % 2;
    parsedecimales = parsedecimales ~/ 2.toInt();
    NUMBinario = "$residuo" + NUMBinario;
  }
  print("El numero binario de $decimales es: "+ NUMBinario);
}
on Exception catch(_)
{
print ("Formato invalido, intentelo de nuevo...");
}
}