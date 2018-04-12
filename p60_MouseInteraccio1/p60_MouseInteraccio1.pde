/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Mouse Interacció 1. Estela amb botó premut o cercles amb click
//Presenta: mousePressed, mouseX, mouseY

//Provar: Click i amb botó premut 
 
color vermell=#FF0000;
boolean on=false;
   
void setup() {
  size(800, 600);
  background(102);
  stroke(0);
  fill(vermell);
}

void draw() {
  if (mousePressed) ellipse(mouseX, mouseY, 100, 100);
}
