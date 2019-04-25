/// @description Insert

if(currentPhase == kPhaseGame)
{
	var numBaddies = ds_list_size(baddieList);
	
	// update a baddie
	
	with(baddieList[|updatingBaddie])
	{
		x += other.baddieDelta;
		
		if(x>=230)
		{
			other.baddieDirection = kDirectionLeft;
			other.baddieMoveDown = true;
		}
		if(x<=10)
		{
			other.baddieDirection = kDirectionRight;
			other.baddieMoveDown = true;
		}
		// animate
		if(other.baddieMoveDown)
		{
//			y += 4;
		}
	}
	
	updatingBaddie++;
	if(updatingBaddie >= numBaddies)
	{
		updatingBaddie = 0;
		baddieMoveDown = false;
		if(baddieDirection == kDirectionRight)
		{
			baddieDelta = 2;
		}
		else
		{
			baddieDelta = -2;
		}
	}
}