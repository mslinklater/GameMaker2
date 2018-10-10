/// @description Setup game globals etc

m_gamePhase = kGamePhaseBoot;

global.playerScore = 0;
global.gameManager = instance_find(oGameManager, 0);

// set quick alarm for boot complete

alarm_set(0, 10);
