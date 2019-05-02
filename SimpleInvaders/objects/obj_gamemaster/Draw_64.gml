/// @description


// game logic
if(false)
{
	switch(currentPhase)
	{
		case kPhaseBuild:
			draw_text(0, 600, "build");
			break;
		case kPhaseGame:
			draw_text(0, 600, "game");
			break;
	}
	
	draw_text(0, 620, "baddies: " + string(ds_list_size(baddieList)));
}

// occupancy
if(false)
{
	for(var i=0 ; i<ds_list_size(baddieOccupancyList) ; i++)
	{
		var row = floor(i/11);
		var col = i % 11;
		if(baddieOccupancyList[|i])
		{
			draw_text(20*col, 100-(20*row), "O");
		}
		else
		{
			draw_text(20*col, 100-(20*row), ".");
		}
	}
	for(var i=0 ; i<ds_list_size(baddieBombSpawnRow) ; i++)
	{
		if(baddieBombSpawnRow[|i] != -1)
		{
			draw_text(baddieColumnXPos + i*20, baddieColumnYPos+ 120-(20*baddieBombSpawnRow[|i]), "X");
		}
	}
}