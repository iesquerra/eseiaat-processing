/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */

//Dibuix Loop 1
//Presenta: fill() amb alfa, random()

//Exercici PROPOSAT:  1 rectangle de color aleatori es desplaça per la base de la pantalla infinitament 
  
int dini=20;
int step=2; //Multiplicador
int d=dini;
color c=#5533AA;
 
void setup(){
  size(800,600);  
  background(240); 
  stroke(100);   //Color vora dels cercles
  strokeWeight(2);
  noFill();
  fill(255,100); //Transparència
}


void draw(){ 
    println(frameCount);
    //fill(c,100);
    ellipse(400,300,d,d);
    delay(200);

    if (d>1300) {
      d=dini; 
      background(240);   
      //c=color(random(255),random(255),random(255));
    }
    else d=d*step;
           
}