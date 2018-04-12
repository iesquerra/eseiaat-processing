
/*

  int xIni=100;
  int yIni=100;
  int escalaLifExp=50;
  int escalagdp=100;
  float escalaHab=0.5;
  int tramslifexp=8;
  int tramsgdp=10;
  int gdpIni=500, lifExpIni=10;

void escriuVertical(String cadena,float direccio,int x,int y){
  pushMatrix();
  translate(x,y);
  rotate(direccio);
  text(cadena,0-2,0+10);
  popMatrix();
}

void graellaVertical(){ 

  textAlign(CENTER);    //aliniació escala
  int yFin=yIni+tramslifexp*escalaLifExp;
  int x;
  for (int i=1;i<tramsgdp;i++){
    x=xIni+escalagdp*i;
    line(x,yIni,x,yFin);
    int valor=(int) (gdpIni*Math.pow(2,i-1));//Inici calcul escala
    if (valor<10000) text(valor,x,yFin+20);  
    else {
      String valorK=valor/1000+"K";
      text(valorK,x,yFin+20);    //Mostra Escala
    }
  }
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
  for (int i=0;i<tramslifexp;i++){
    int y=yIni+escalaLifExp*i;
     line(xIni,y,xIni+tramsgdp*escalagdp,y);
     text(90-10*i,xIni,y);  //Mostra Escala
  } 
  
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
  //textSize(11);
  
  ferGraella(); 
  saveFrame("images/exerciciGraellaGapminder.png");
}




void draw(){
  
}
*/

