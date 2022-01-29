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
try{
  String ComprobarPalindromo = "";
  String Quitarespacios = "";
  bool Verificador = true;
  var Palabra;
  int ContadorPalabras = 0;
  print ("Bienvenido a mi identificador de palindromos");
  print("Introduzca la palabra");
  Palabra = stdin.readLineSync();
  Palabra = Palabra.toLowerCase();
  for (int i=0;i<=(Palabra.length-1);i++) 
  {
    if (Palabra[i]!=" ")
    {
      Quitarespacios=Quitarespacios+Palabra[i];
    }
  }
  for (int i=(Palabra.length-1);i>=0;i--) 
  {
    if (Palabra[i]!=" ")
    {
    ComprobarPalindromo=ComprobarPalindromo+Palabra[i];
    }
  }
  for(int i=0;i<=(Quitarespacios.length-1);i++) 
  {
    if(Quitarespacios[i]==ComprobarPalindromo[i]) 
    {
      Verificador=true;
    } else 
    {
      Verificador=false;
      break;
    }
  }
  if (Verificador==true) 
  {
    print("La palabra introducida si es un palindromo");
    for (int i=0;i<=(Palabra.length-1);i++) 
    {
      if (i<(Palabra.length-1)) 
      {
        if (Palabra[i]==" "&&Palabra[i-1]!=" "&&Palabra[i+1]!=" ") 
        {
          ContadorPalabras=ContadorPalabras+1;
        }
      }
    }
    print("Y tiene un numero de palabras de: ${ContadorPalabras+1}");
  } else 
  {
    print("La palabra introducida no es un palindromo...");
  }
}
on Exception catch(_)
{
  print ("Formato invalido... Intentelo de nuevo");
}
}