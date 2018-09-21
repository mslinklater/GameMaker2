/// Face the correct direction
if( xp>x ) {
    if(  sprite_index != LargeBaddie_left ) sprite_index = LargeBaddie_left;
}else{
    if(  sprite_index != LargeBaddie_right ) sprite_index = LargeBaddie_right;
}
xp=x;