/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */

//Mouse Interacció. Estela de moviment amb canvi de color prement botó.
//Presenta: mousePressed, mouseX, mouseY

//Provar: Click i amb botó premut 

color verd=#00FF00;
color vermell=#FF0000;
void setup() {
  size(640, 360);
  background(102);
  stroke(0);
}

void draw() {  
  if (mousePressed) fill(vermell);
  else fill(verd);
  
  ellipse(mouseX, mouseY, 100, 100);
}
