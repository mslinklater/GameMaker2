/// @description

event_inherited();

m_seekX = global.player1X;
m_seekY = global.player1Y;

var lookahead = 8;

if(global.player1Direction == kDirectionUp)	m_seekY -= kMapTileSize * lookahead;
if(global.player1Direction == kDirectionDown)	m_seekY += kMapTileSize * lookahead;
if(global.player1Direction == kDirectionLeft)	m_seekX -= kMapTileSize * lookahead;
if(global.player1Direction == kDirectionRight)	m_seekX += kMapTileSize * lookahead;

m_seekX = clamp(m_seekX, kMapTileSize * 1.5, kMapTileSize * 26.5);
m_seekY = clamp(m_seekY, kMapTileSize * 4.5, kMapTileSize * 32.5);
