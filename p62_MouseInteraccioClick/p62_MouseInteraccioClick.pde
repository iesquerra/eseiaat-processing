/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Mouse Interacció. Estela amb interruptor
//Presenta: mousePressed()

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
  if (on) ellipse(mouseX, mouseY, 100, 100);

}

void mousePressed() {
  on=!on;
}
