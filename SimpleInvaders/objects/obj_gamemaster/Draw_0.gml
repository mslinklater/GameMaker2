/// @description Insert description here
// You can write your code in this editor

// lives
if(currentPhase == kPhaseGame)
{
	draw_set_halign(fa_left);

	draw_text(8, 300, string(lives));
}

if(currentPhase == kPhaseGameOver)
{
	draw_set_halign(fa_center);
	draw_text(120, 200, "GAME OVER");
}
