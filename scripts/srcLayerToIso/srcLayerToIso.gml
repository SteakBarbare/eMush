/// @function								srcLayerToIso(Layer);
/// @param  {string}		Layer			    string of the layer name
/// @param  {ds_grid}		Grid				Empty 2D array for the tile coordinate
/// @description	


function srcLayerToIso()
{
	var layerMap = layer_tilemap_get_id(argument0);
	for(var tileX = 0; tileX < MAP_W; tileX++)
	{
		for(var tileY = 0; tileY < MAP_H; tileY++)
		{
			var layerMapData = tilemap_get(layerMap, tileX, tileY);
			// Information of the tile, index 0 is the sprite index, and index 1 is the Z level of the tile, -1 is the default value of a tile ID
			var thisTile = [-1, 0];
			thisTile[TILE.SPRITE] = layerMapData;
			thisTile[TILE.Z] = 0;
		
			argument1[# tileX, tileY] = thisTile;
		}
	}
}