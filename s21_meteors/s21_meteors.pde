/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


//Utilitzat: exit() i metodes de Table: loadTable(), getRowCount(),getRow(), getString(), getFloat()


Table tabla;
int x= 100,y=1;
int total,fila=0;

void setup(){
  size(1000,500);
  background(0);
  fill(255);
  //textSize(10);
  tabla=loadTable("data/meteorite_csv.csv","header");
  total=tabla.getRowCount();
}

void draw(){

    TableRow t = tabla.getRow(fila);
    fila=fila+100;   
    String nom=t.getString("name");
    float latitud=t.getFloat("reclat");
    float longitud=t.getFloat("reclong");
    float masa=t.getFloat("mass");
    float any=t.getFloat("year");
    String s=nom+" "+latitud+" "+ longitud+" "+masa+" "+any;
    if (y>=490){
      delay(100);
      background(0);
      y=10;
    }
    text(s, x,y);
    y=y+10;
    if (fila>=total){ exit();}  
    
}

