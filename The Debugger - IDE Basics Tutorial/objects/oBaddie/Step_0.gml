/// Face the correct direction
if( xp>x ) {
    if(  sprite_index != Baddie_Walk_Left ) sprite_index = Baddie_Walk_Left;
}else{
    if(  sprite_index != Baddie_Walk_Right ) sprite_index = Baddie_Walk_Right;
}
xp=x;