/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Utilitzat: foreach

PImage mapamundi;
Table tabla;

void setup(){
  size(1000,500);
  mapamundi=loadImage("data/mapaMundi_1000_500.png");
  tabla=loadTable("data/meteorite_csv.csv","header");
}

void draw(){
background(mapamundi);
//background(0);
for(TableRow t: tabla.rows()){
    String nom=t.getString("name");
    float latitud=t.getFloat("reclat");
    float longitud=t.getFloat("reclong");
    float masa=t.getFloat("mass");
    float any=t.getFloat("year");
  
    float mapX=map(longitud,-180,180,0.0,width+0.0);
    float mapY=map(latitud,90,-90,0.0,height+0.0);
    float mapMasa=map(masa,0,5000000,2.0,6.0);
  
  //stroke(255,0,0);
  //strokeWeight(mapMasa);
  //point(mapX,mapY);
  stroke(255,0,0);
  fill(#FF0000,50);
  ellipse(mapX,mapY,mapMasa,mapMasa);

}

}
