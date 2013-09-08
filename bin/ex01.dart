/*Write a program that prints the numbers from 1 to 100. 
 * But for multiples of three print “Fizz” instead of the number 
 * and for the multiples of five print “Buzz”. 
 * For numbers which are multiples of both three and five print “FizzBuzz”.
*/

const DIVISIBLE3 = 3;
const DIVISIBLE5 = 5;

void main() {

  String reponse;
  
  print("Résultats de FizzBuzz\n");
  for (int nombre = 1; nombre <= 100; nombre++) 
  {
    reponse = determineFizzBuzz(nombre); 
    print("Pour le nombre $nombre, la réponse est : $reponse");
  }
}

/* determineFizzBuzz
 * Si le nombre est un multiple de 3, retourne "Fizz"
 * Si le nombre est un multiple de 5, retourne "Buzz"
 * Si le nombre est un multiple de 3 et de 5, retourne "FizzBuzz"
 * Si le nombre n'est ni un multiple de 3, ni un multiple de 5, retourne le nombre
 *   
 * input : 
 *    nombre : pour lequel on veut évaluer la chaîne FizzBuzz
 * output :
 *    La chaîne résultante    
 * */
String determineFizzBuzz(int nombre){
  String reponse = "";
  
  // Si le nombre se divise par 3, sans reste, on concatène 'Fizz'
  if (nombre%DIVISIBLE3 == 0)
  {  
    reponse = reponse + "Fizz";
  }
  
  // Si le nombre se divise par 5, sans reste, on concatène 'Buzz'
  if (nombre%DIVISIBLE5 == 0)
  { 
    reponse = reponse + "Buzz";
  }
  
  if (reponse == "")
  {  
    reponse = nombre.toString();
  }

  return reponse;
}
