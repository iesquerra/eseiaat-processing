/*


{
    float x = map( player.position(), 0, player.length(), 0, width );
    stroke( 0 );
    line( x, 0, x, height );

}


void mousePressed()
{
    int pos = floor( map( mouseX, 0, width, 0, player.length() ) );
    player.play( pos );
}

void keyPressed()
{
    if ( key == ' ' ) {
        if ( player.isPlaying() ) {
            player.pause();
        } else {
            player.play();
        }
    }
    
    if ( key == CODED ) {
        if ( keyCode == LEFT ) {
            player.rewind();
        }
    }
}

*/

