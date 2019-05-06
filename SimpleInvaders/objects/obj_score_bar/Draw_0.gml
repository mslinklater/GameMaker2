/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);

// score
draw_text(40, 8, "SCORE");
draw_text(40, 20, string(score));

// high score
draw_text(120, 8, "HI-SCORE");
draw_text(120, 20, string(highscore_value(1)));


