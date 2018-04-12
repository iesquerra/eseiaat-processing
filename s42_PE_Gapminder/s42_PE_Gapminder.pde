/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


  //Datos de regiones (continentes):
  //0 - Europa   - Amarillo
  //1 - Asia     - Rosa
  //2 - Africa   - Azul
  //3 - America  - Verde

  color[] colores={#FFFF00,#FF8080,#00FFFF,#80FF00};
  int xIni=100;
  int yIni=100;
  int escalaLifExp=50;
  int escalagdp=100;
  float escalaHab=0.20;
  int tramslifexp=8;
  int tramsgdp=10;
  int gdpIni=500, lifExpIni=10;
  int anyIni=1960;
  int anyFi=2010;
  int any=anyIni;
  int xText=1000;
  int yText=70;

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

int conversioLifeExp(float valor){ 
 return yIni+tramslifexp*escalaLifExp-int (((valor-lifExpIni)/10)*escalaLifExp);
}
/*
int conversiogdp(int valor){
double xx=(Math.log10(valor/gdpIni)/Math.log10(2));
return xIni+(int)((xx+1)*escalagdp);
}*/

int conversiogdp(float valor){
double xx;
int x;

if (valor<500){
  xx=valor;
  x=xIni+(int)((xx/5)*escalagdp);
}
else {
  xx=(Math.log10(valor/gdpIni)/Math.log10(2));
  x=xIni+(int)((xx+1)*escalagdp);//Para potencia 0 tiene que estar en el segundo tramo
}

//int x=xIni+(int)((xx+1)*escalagdp);
//if (x<xIni) System.out.println("  xxxxxxx: "+xx);
//return xIni+(int)((xx+1)*escalagdp);
return x;
}


void setup(){
  size(1200,600);  
}


void draw(){  
  int continent;
  float gdp,lifexp,hab;
  String pais;
  int x,y,radi;
  
  Table tabla;
  
     background(240);
     textSize(11);

     ferGraella(); 
  
     stroke(100); //Borde de los circulos
     textSize(30);    
     text(any,xText,yText);
     String nom="tot_"+any+".csv";
     if (any==anyFi) any=anyIni;
     else any=any+5;
     //System.out.println(nom);
     tabla=loadTable(nom,"header");
     for(TableRow t: tabla.rows()){
        gdp=t.getFloat("gdp");
        lifexp=t.getFloat("lifexp");
        hab=t.getFloat("population");
        hab=hab/1000000;
        continent=t.getInt("regio");
        pais=t.getString("pais");
        if (gdp>0 && lifexp>0 && hab>0){ 
            y=conversioLifeExp(lifexp);
            x=conversiogdp(gdp);
            radi=int (escalaHab*hab);
            //if (x<xIni) System.out.println(pais+"    "+continent+"  x: "+x+"  y: "+y+"  radi: "+radi);
            fill(colores[continent],100);
            ellipse(x,y,radi,radi);
        
            if (pais.equals("India")) //|| radi>200) 
            {
              System.out.println(pais+"   "+hab+ "  radi: "+radi);
              delay(100);
            }
        }
     }
   //delay(20);
}

