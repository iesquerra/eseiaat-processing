/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */

//Dibuix Loop 1
//Presenta: delay(), nofill(), frameCount

//Exercici PROPOSAT: dibuixar un cercle que caigui des de dalt de la pantalla i s’aturi a terra
  
int dini=20;
int d=dini;
int step=20; //Sumador 
 
void setup(){
  size(800,600);  
  background(240);    
  stroke(100);  //Color vora dels cercles
  strokeWeight(2);
  noFill();     //sense color interior
}


void draw(){ 
    println(frameCount);
    //background(255);
    ellipse(400,300,d,d);
    delay(200);
    d=d+step;       
}