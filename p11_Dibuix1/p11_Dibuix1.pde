/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */

//Dibuix Simple 1. Pas 2
//Presenta: background(), stroke(), strokeWeight(), ellipse(), triangle(). Explicació Color

//Exercici PROPOSAT: Fer que es mostrin totes les figures en 2 files i cada figura d'un color. 
//Bàsics: RGB Complementaris: CMY
//255=FF
//128=80

void setup(){
  size(800,600); 

  background(#FF0000);//Fons Finestra
  //background(255,0,0); 
  //background(128); 
  
  stroke(100);       //Color vora 
  strokeWeight(2);   //Ample vora
  fill(#00FF00);     //Color interior
  noLoop(); // Ha d'estar com a última sentencia del setup. Compte amb l'ús! 
}

void draw(){
  
   ellipse(200,300,100,100);           //ellipse(x,y,d1,d2);
   //ellipse(200,300,200,100);  
   rect(450,400,100,100);
   //rect(450,400,100,150);
   triangle(560,180,620,300,500,300);
   //triangle(560,180,700,300,500,300);

}