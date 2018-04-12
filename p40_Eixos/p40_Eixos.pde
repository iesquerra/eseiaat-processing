/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */



void setup() {
  size(400,300); 
  background(255);
  fill(0);
  noLoop();
}
  
void draw() {

  //Escriptura en coordenades originals 
  text("ZERO",50,20);
  drawAxis();

}


void drawAxis() 
{
  stroke(192);
  line(-50,0,50,0);
  line(0,-50,0,50);
}

