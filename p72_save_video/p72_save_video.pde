/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */


// Basat en l'exemple de llibre:
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */

int randomNum;

void setup()
{
    size( 640, 480 );
    frameRate( 30 );
    randomNum = floor( random( 10000, 90000 ) );
}

void draw()
{
    background( 0 );
    for ( int i = 0; i < 200; i++ ) {
        fill( random( 255 ), random( 255 ), random( 255 ), 64 );
        stroke( 255, 128 );
        ellipse( random( width ), random( height ), 80, 80 );
    }
    
    if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }

    saveFrame("images/export-"+randomNum+"-#####.tga");
    // save 900 frames = 10 sec @ 30 fps
    if ( frameCount >= 300 ) {
        exit();
    }
}
