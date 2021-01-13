/// @function								srcTileToScreenX(tileX, tileY, isXCoordinate);
/// @param  {real}		tileX				X coordinate of the tile
/// @param  {real}		tileY				Y coordinate of the tile
/// @param  {boolean}	isXCoordinate		Check which value to return
/// @description							Take tiles coordinate and return isometric coordinates depending on a boolean

function srcTileToScreenX(){
	var tileX = argument0;
	var tileY = argument1;
	var isXCoordinate = argument2;

	if(isXCoordinate){
		return((tileX - tileY) * (TILE_W * 0.5));
	}else{
		return((tileX + tileY) * (TILE_H * 0.5));
	}
}


