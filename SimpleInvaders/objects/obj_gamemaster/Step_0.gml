/// @description Update the game

if(currentPhase == kPhaseGame)
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
		return;
	}
	
	// update this frames baddie	
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
	
	updatingBaddie++;
	
	// wrap back to updating the first baddie and do some processing
	if(updatingBaddie >= numBaddies)
	{
		updatingBaddie = 0;
		baddieMovingDown = baddieRequestMoveDown;
		baddieRequestMoveDown = false;
		if(baddieDirection == kDirectionRight)
		{
			baddieDelta = kBaddieXSpeed;
		}
		else
		{
			baddieDelta = -kBaddieXSpeed;
		}
	}
	
	// Decide wether to drop bombs
}