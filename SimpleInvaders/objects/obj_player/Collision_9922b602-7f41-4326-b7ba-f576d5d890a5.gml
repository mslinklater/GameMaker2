/// @description

global.playerAlive = false;
instance_destroy(other);

// player dead stuff
lives--;

if(lives > 0)
{
	alarm_set(kAlarmRevive,120);
}
else
{
	// proper dead...
	scr_endgame();
}
