/// @desc Render Isometric Map
var tileData, roomX, roomY, tileIndex, tileZ;

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		tileData = global.shipRoom[# tileX, tileY];
		roomX = srcTileToScreen(tileX, tileY, true);
		roomY = srcTileToScreen(tileX, tileY, false);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		if(tileIndex !=0)
		{
			draw_sprite(sprShipTile, (tileIndex - 1), roomX, roomY + tileZ);
		}
	}
}
