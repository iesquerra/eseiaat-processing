/**
 * Taller d’introducció a la programació en Processing
 * Pepa López i Ignasi Esquerra
 * ESEIAAT (UPC)
 * 13-15 Febrer 2018
 * https://eseiaatprocessing.wordpress.com/
 */




// Basat en l'exemple del llibre:
/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
void setup()
{
    size( 800, 600 );
    background( 255 );
}

void draw()
{
    // empty, but we need it to create an app that runs in the continuous programming mode.
}

void mousePressed()
{
    if ( mouseButton == RIGHT ) {
        background( 255 );
    }
}

void mouseMoved()
{
    stroke( 0, 64 );
    strokeWeight( 1 );
    fill( 255, 32 );
    float d = dist( mouseX, mouseY, pmouseX, pmouseY );
    println("Abans: ", d);
    d=constrain( d, 8, 100 );
    println("Despres: ", d);
    ellipse( mouseX, mouseY, d, d );
}

void mouseDragged()
{
    stroke( 0 );
    float d = dist( mouseX, mouseY, pmouseX, pmouseY );
    d=constrain( d, 0, 100 );
    float w = map( d, 0, 100, 1, 10 );
    strokeWeight( w );
    line( mouseX, mouseY, pmouseX, pmouseY );
}

void mouseReleased()
{
    noStroke();
    fill( #000080, 16 );
    rect( 0, 0, width, height );
}

void mouseClicked()
{
    fill( 255, 0, 0, 128 );
    float d = random( 20, 200 );
    ellipse( mouseX, mouseY, d, d );
}

