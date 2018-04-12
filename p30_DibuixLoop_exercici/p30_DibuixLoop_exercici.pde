/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */

//Dibuix Loop 1
//Exercici PROPOSAT: dibuixar un cercle que caigui des de dalt de la pantalla i s’aturi a terra
  
int yini=-50;
int y=yini;
int step=10; //Sumador 
 
void setup(){
  size(800,600);  
   
}


void draw(){ 
    background(0); 
    fill(255);
    ellipse(400,y,100,100);
    delay(200);
    if (y+50<600) y=y+step;  
    
}