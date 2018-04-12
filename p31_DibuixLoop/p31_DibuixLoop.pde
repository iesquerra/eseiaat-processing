/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */

//Dibuix Loop 1
//Presenta: exit()

//Exercici Proposat:  
  
int dini=20;
int d=dini;
int step=2; //Multiplicador
 
void setup(){
  size(800,600);  
  background(240);   
  stroke(100); //Vora dels cercles 
  strokeWeight(2);
  noFill();  
}


void draw(){ 
    println(frameCount," ",d);   
    delay(200);
    if (d>640) exit();  //juguem amb limit d (640): primer cercle fora de pantalla
    else {
      ellipse(400,300,d,d);
      d=d*step;
    }
           
}
