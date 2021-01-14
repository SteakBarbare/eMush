/// @desc Render Isometric Map
var roomX, roomY, floorData, floorTileIndex, floorTileZ, furnituresData, furnituresTileIndex, furnituresTileZ;

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		floorData = global.shipRoomFloor[# tileX, tileY];
		
		roomX = srcTileToRoom(tileX, tileY, true);
		roomY = srcTileToRoom(tileX, tileY, false);
		
		floorTileIndex = floorData[TILE.SPRITE];
		floorTileZ = floorData[TILE.Z];

		if(floorTileIndex != 0)
		{
			draw_sprite(sprShipTile, floorTileIndex - 1, roomX, roomY + floorTileZ);
		}
		
		if((srcRoomToTile(mouse_x, mouse_y, true) == tileX) && (srcRoomToTile(mouse_x, mouse_y, false) == tileY))
		{
			draw_sprite(sprTileSelection, 0, roomX, roomY + floorTileZ);
		}
	}
}

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		furnituresData = global.shipRoomFurnitures[# tileX, tileY];
		
		roomX = srcTileToRoom(tileX, tileY, true);
		roomY = srcTileToRoom(tileX, tileY, false);

		furnituresTileIndex = furnituresData[TILE.SPRITE];
		furnituresTileZ = furnituresData[TILE.Z] + 1;

		if(furnituresTileIndex != 0)
		{
			draw_sprite(sprFurnituresBed, 0, roomX, roomY + furnituresTileZ);
		}
		
	}
}

