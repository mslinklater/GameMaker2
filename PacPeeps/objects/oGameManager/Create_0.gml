/// @description Setup game globals etc

m_gamePhase = kGamePhaseBoot;

global.playerScore = 0;

// set quick alarm for boot complete

alarm_set(0, 10);
