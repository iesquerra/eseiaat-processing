/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Mouse Interacció. Distingir events
//Presenta: mouseClicked(), mouseReleased()

//Provar: Click i amb moviment i botó premut  
 
   
void setup() {
  size(800, 600);
  background(102);
  stroke(0);
  ellipse(100, 100, 100, 100);
  ellipse(300, 100, 100, 100);  
  ellipse(500, 100, 100, 100);
}

void draw() {
if (keyPressed) {
  background(102);
  fill(255);
  stroke(0);
  ellipse(100, 100, 100, 100);
  ellipse(300, 100, 100, 100);  
  ellipse(500, 100, 100, 100);
}
}


void mouseClicked() {
    fill(#FF0000);
    ellipse(100, 100, 100, 100);
}
void mouseReleased() {
    fill(#00FF00);
    ellipse(300, 100, 100, 100);
}
void mousePressed(){
    fill(#0000FF);
    ellipse(500, 100, 100, 100);
}