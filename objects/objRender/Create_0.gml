/// @desc Map Building

layer_set_visible("RoomLayer", false);

global.shipRoom = ds_grid_create(MAP_W, MAP_H);

var tileMap = layer_tilemap_get_id("RoomLayer");

for(var tileX = 0; tileX < MAP_W; tileX++)
{
	for(var tileY = 0; tileY < MAP_H; tileY++)
	{
		var tileMapData = tilemap_get(tileMap, tileX, tileY);
		tileMapData = tile_get_index(tileMapData)
	}
}

