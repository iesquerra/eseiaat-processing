/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */



//Exercici 1: bola blanca caient i s'atura al terra

//Exercici 2: puntets random per tota la pantalla

//Exercici 3 (Interacció): Bola Blanca que es pugui agafar i moure i s'atura quan es deixa de premer el ratolí



int xp =50;
int yp =50;
int d=100;
int xIncDec=10;
int x=0;
int tamanyCaixes=200;
boolean diamants=false;

boolean cau=false;

color[] c={color(random(255),random(255),random(255)),
           color(random(255),random(255),random(255)),
           color(random(255),random(255),random(255)),color(255,255,255)};

void setup(){
  size(800,600);
  background(0);
  //frameRate(1000000000);
  fill(255);
  ellipse(xp,yp,d,d);
  
 /* noStroke();
  fill(255);
  rect(0,500,800,100);
  ellipse(x,y,d,d);*/
  
  
  //noLoop();
  
}

void dibuixaCaixes(int x1){
  background(0);
  for (int i=0;i<3;i++){
    int x2=x1+tamanyCaixes;   
    fill(c[i]);
    rect(x1,height-100,x2-x1,100);
    x1=x2;
  }
  
  
}

void dibuixaDiamants(){
  for (int i=0;i<4;i++){
    int xd=(int)random(width);
    int yd=(int)random(height);
    int dd=(int)random(10);
    fill(c[i]);
    ellipse(xd,yd,dd,dd);
  }
  delay(20);
}

void draw(){
  if (!diamants){
    x=x+xIncDec;
    if(x<=10) xIncDec=10;
    else if (x+tamanyCaixes*3>=width-abs(xIncDec)) xIncDec=-10;
 
  dibuixaCaixes(x);
  delay(100);
  
  //fill(255);
  //rect(0,500,width,100);
  if (mousePressed){
    if (abs(mouseX-xp)<d/2 && abs(mouseY-yp)<d/2){
      //println("entra");
      stroke(0);
      fill(0);
      ellipse(xp,yp,d+1,d+1);
      noStroke();
      fill(255);
      xp=mouseX;
      yp=mouseY;
      ellipse(xp,yp,d,d);   
    }
    else{
        fill(255);
        ellipse(xp,yp,d,d);
    }
  }
  else{
    if (cau){
      if (yp>=450){
        diamants=true;
        
        //fill(255);
        background(0);
/*
        fill(255);
        ellipse(xp,yp+10,d,d);
        stroke(0);
        //rect(0,500,x ,100,0,50,0,0);
        //rect(x,500,width-x,100,50,0,0,0);
        noStroke();
        //cau=false;*/
      }
      else{
        fill(0);
        stroke(0);
        ellipse(xp,yp,d+13,d+13);
        //background(0);
        yp=yp+20;
        noStroke();
        fill(255);
        ellipse(xp,yp,d+5,d+5);
      }
      
    }
    else{
        fill(255);
        ellipse(xp,yp,d,d);
    }
  }
  }
  else{
    dibuixaDiamants();
  }
  
}



void mouseReleased(){
  cau=true;
}

/*
void mousePressed(){
  if (mouseX<d/2 && mouseY<d/2){
    println("entra");
    fill(0);
    ellipse(x,y,d,d);
    fill(255);
    x=mouseX;
    y=mouseY;
    //ellipse(x,y,d,d);   
  }
    
}
*/
