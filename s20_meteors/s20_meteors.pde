/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Utilitzat: loadImage(), relació size i resolució

PImage mapamundi;
Table tabla;

void setup(){
  size(1000,500);
  mapamundi=loadImage("data/mapaMundi_1000_500.png");
  
}

void draw(){
background(mapamundi);
}

