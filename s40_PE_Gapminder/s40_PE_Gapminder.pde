/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


  int xIni=100;
  int yIni=100;
  int escalaLifExp=50;
  int escalagdp=100;
  float escalaHab=0.5;
  int tramslifexp=8;
  int tramsgdp=10;
  int gdpIni=500, lifExpIni=10;

void escriuVertical(String cadena,float direccio,int x,int y){
  //Escriu la cadena en vertical
}

void graellaVertical(){ 

  textAlign(CENTER);    //aliniació escala
  int yFin=yIni+tramslifexp*escalaLifExp;
  int x;
  
  //Dibuixar les linies verticals i el text amb l'escala
  
  textAlign(RIGHT);
  String income="per person (GDP/capita, PPP$ inflation-adjusted)";
  x=xIni+escalagdp*tramsgdp;
  text(income,x,yFin-10); 
  textSize(25);
  textAlign(CENTER);
  text("Income",xIni+(int)((escalagdp*tramsgdp)/2),yFin+50);
  textSize(11); 
}

void graellaHoritzontal(){

  textAlign(RIGHT,CENTER); //aliniació escala
  //Dibuixar les linies horitzontals i el text amb l'escala
  
  escriuVertical("years",-HALF_PI,xIni,yIni); 
  textSize(25);
  textAlign(CENTER);
  escriuVertical("Life expectancy",-HALF_PI,xIni-50,yIni+(int)((escalaLifExp*tramslifexp)/2));
  textSize(11);
}

void ferEix(){
    line(xIni,yIni,xIni,yIni+tramslifexp*escalaLifExp);
    line(xIni,yIni+tramslifexp*escalaLifExp,xIni+tramsgdp*escalagdp,yIni+tramslifexp*escalaLifExp);
}

void ferGraella(){
  stroke(175);
  ferEix();
  stroke(220);
  fill(175);    //Color text
  graellaVertical();
  graellaHoritzontal();
}



void setup(){

  size(1200,600);
  background(240);
  
  ferGraella(); 
}


void draw(){
  
}
