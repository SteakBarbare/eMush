/// @desc Render Isometric Map
var roomX, roomY,
floorData, floorTileIndex, floorTileZ,
wallData, wallTileIndex, wallTileZ;

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		floorData = global.shipRoomFloor[# tileX, tileY];
		wallData = global.shipRoomWall[# tileX, tileY];
		
		roomX = srcTileToRoom(tileX, tileY, true);
		roomY = srcTileToRoom(tileX, tileY, false);
		
		wallTileIndex = wallData[TILE.SPRITE];
		wallTileZ = wallData[TILE.Z];
		
		floorTileIndex = floorData[TILE.SPRITE];
		floorTileZ = floorData[TILE.Z];
		if(wallTileIndex != 0)
		{
			if(wallTileIndex%2 == 0) draw_sprite(sprWallTileRight, wallTileIndex - 1, roomX, roomY + wallTileZ);
			else draw_sprite(sprWallTileLeft, wallTileIndex - 1, roomX, roomY + wallTileZ);
			
		}
		if(floorTileIndex != 0)
		{
			draw_sprite(sprShipTile, floorTileIndex - 1, roomX, roomY + floorTileZ);
		}
		
		
		
		if((srcRoomToTile(mouse_x, mouse_y, true) == tileX) && (srcRoomToTile(mouse_x, mouse_y, false) == tileY) && floorTileIndex != 0)
		{
			show_debug_message("X = " + string(tileX) + " Y = " + string(tileY));
			draw_sprite(sprTileSelection, 0, roomX, roomY + floorTileZ);
		}
	}
}
