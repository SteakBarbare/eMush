/// @desc Render Isometric Map
var tileData, roomX, roomY, tileIndex, tileZ;

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		tileData = global.shipRoom[# tileX, tileY];
		
		roomX = srcTileToRoom(tileX, tileY, true);
		roomY = srcTileToRoom(tileX, tileY, false);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];

		if(tileIndex != 0)
		{
			draw_sprite(sprShipTile, tileIndex - 1, roomX, roomY + tileZ);
			
			if( (srcRoomToTile(mouse_x, mouse_y, true) == tileX) && (srcRoomToTile(mouse_x, mouse_y) == tileY))
			{
				draw_sprite(sprTileSelection, 0, roomX, roomY + tileZ);
			}
		}
		
		
		
	}
}
