/// @desc Map Building
c = 0
layer_set_visible("RoomLayer", false);

global.shipRoom = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("RoomLayer");

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		var tileMapData = tilemap_get(tileMap, tileX, tileY);
		//tileMapData = tile_get_index(tileMapData);
		
		// Information of the tile, index 0 is the sprite index, and index 1 is the Z level of the tile, -1 is the default value of a tile ID
		var thisTile = [-1, 0];
		thisTile[TILE.SPRITE] = tileMapData;
		thisTile[TILE.Z] = 0;
		
		global.shipRoom[# tileX, tileY] = thisTile;
	}
}

