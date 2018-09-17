if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

image_angle = direction

if hp <= 0 
{
	with(obj_score) thescore = thescore + 5;
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	audio_play_sound(snd_death, 0, false);
	instance_destroy();
}