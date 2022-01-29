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
void main(){
  double IMC;
  double KG;
  double altura;
  double cm;
  var kg;
  var Altura;
  String strIMC;
print("Bienvenido a nuestro programa de calculo de IMC");
try{
print("Ingrese su Altura en centimetros por favor (solo numeros)");
  Altura = stdin.readLineSync();
  altura = double.parse(Altura);
  print("Ingrese su Peso por favor (solo numeros)");
  kg = stdin.readLineSync();
  KG = double.parse(kg);
  cm=altura/100;
  IMC=KG/(cm*cm);
  if(IMC<18.5){
    strIMC = IMC.toStringAsFixed(2);
    print("Su IMC es de: $strIMC, por lo tanto usted tiene PESO INFERIOR AL NORMAL");
  }
  if(IMC>=18.5 && IMC<25){
    strIMC = IMC.toStringAsFixed(2);
    print("Su IMC es de: $strIMC, por lo tanto usted tiene PESO NORMAL");
  }
  if(IMC>=25 && IMC<30){
    strIMC = IMC.toStringAsFixed(2);
    print("Su IMC es de: $strIMC, por lo tanto usted tiene PESO SUPERIOR AL NORMAL");
  }
  if(IMC>=30){
    strIMC = IMC.toStringAsFixed(2);
    print("Su IMC es de: $strIMC, por lo tanto usted tiene OBESIDAD");
  }

}
on Exception catch(_){
print ("Formato invalido, intentelo nuevamente...");
};
}

