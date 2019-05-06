/// @description Update the game

if((currentPhase == kPhaseGame) && (global.playerAlive))
{
	var numBaddies = ds_list_size(baddieList);

	// Process clearing the grid of baddies
	if(numBaddies == 0)
	{
		currentPhase = kPhaseBuild;
		alarm[kBuildAlarm] = 5;
		baddieList = ds_list_create();
		numBaddiesBuilt = 0;
		baddieMovingDown = false;
		baddieRequestMoveDown = false;
		instance_destroy(obj_barrier);
		wave = clamp(wave++, 0, 10);
		
		return;
	}
	
	// update this frames baddie
	updatingBaddie = clamp(updatingBaddie, 0, ds_list_size(baddieList) - 1);
	
//	if(baddieList[|updatingBaddie] != noone)
//	{
		with(baddieList[|updatingBaddie])
		{
			if(other.baddieMovingDown)
			{
				y += kBaddieYSpeed;
			}
			else
			{
				x += other.baddieDelta;
				image_index = 1 - image_index;
			
				if(x >= room_width - kBaddieXBorder)
				{
					other.baddieDirection = kDirectionLeft;
					other.baddieRequestMoveDown = true;
				}
				if(x <= kBaddieXBorder)
				{
					other.baddieDirection = kDirectionRight;
					other.baddieRequestMoveDown = true;
				}
			}
		}
//	}
	
	updatingBaddie++;
	
	// wrap back to updating the first baddie and do some processing
	if(updatingBaddie >= numBaddies)
	{
		updatingBaddie = 0;
		baddieMovingDown = baddieRequestMoveDown;
		if(baddieMovingDown)	// move bomb drop down
		{
			baddieColumnYPos += kBaddieYSpeed;
		}
		baddieRequestMoveDown = false;
		if(baddieDirection == kDirectionRight)
		{
			baddieDelta = kBaddieXSpeed;
		}
		else
		{
			baddieDelta = -kBaddieXSpeed;
		}
		baddieColumnXPos += baddieDelta;
	}
	
	// Decide wether to drop bombs
	if(bombAvailable)
	{
		// which columns have baddies in them
		var columnList = ds_list_create();
		for(var iCol=0 ; iCol<11 ; iCol++)
		{
			var occupied = false;
			for( var iRow=0 ; iRow<5 ; iRow++)
			{
				if(ds_list_find_value(baddieOccupancyList, (iRow*11) + iCol))
				{
					occupied = true;
				}
			}
			if(occupied)
			{
				ds_list_add(columnList, iCol);
			}
		}
		if(ds_list_size(columnList) > 0)
		{
			var chosenColumn = ds_list_find_value(columnList, irandom_range(0, ds_list_size(columnList)-1));
			var xpos = kBaddieStartX + baddieColumnXPos + (kBaddieStartXStep * chosenColumn);
			var ypos = baddieColumnYPos + kBaddieStartY - (baddieBombSpawnRow[|chosenColumn] * kBaddieStartYStep);
 			instance_create_layer(xpos, ypos, "Instances", obj_bomb);
		}
		
		bombAvailable = false;
	}
}

// Game Over
if(currentPhase == kPhaseGameOver)
{
	if(keyboard_check(vk_space))
	{
		room_goto(rm_boot);
	}
}
