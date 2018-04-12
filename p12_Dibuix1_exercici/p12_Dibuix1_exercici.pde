/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Dibuix Simple 1. Exercici

//Fer que es mostrin totes les figures en 2 files i cada figura d'un color. 
//Bàsics: RGB Complementaris: CMY


void setup(){
  size(800,600); 

  background(200);//Fons Finestra

  stroke(100);       //Color vora 
  strokeWeight(2);   //Ample vora

  //noLoop(); // Ha d'estar com a última sentencia del setup. Compte amb l'ús! 
}



void draw(){
   fill(#FF0000);
   ellipse(150,200,100,100);           //ellipse(x,y,d1,d2);
   
   fill(#00FFFF);
   ellipse(150,400,200,100); 
   
   fill(#00FF00);
   rect(350,150,100,100);
   
   fill(#FF00FF);
   rect(325,350,150,100);
   
   fill(#0000FF);
   triangle(550,250,670,250,610,130);
   
   fill(#FFFF00);
   //triangle(560,180,700,300,500,300);
   triangle(550,450,670,450,670,330);
   
   if ( keyPressed ) {
        saveFrame("images/exercici.png");
    }

}
