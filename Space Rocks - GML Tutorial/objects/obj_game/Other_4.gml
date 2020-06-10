/// @description

if(audio_is_playing(msc_song))
{
	audio_stop_sound(msc_song);
}

if (room == rm_game)
{
	spawn_off_camera(obj_asteroid, 40);
	
	audio_play_sound(msc_song, 2, true);
	
	alarm[0] = 60;
}

