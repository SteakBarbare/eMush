var tileX = argument0;
var tileY = argument1;
var xReturn = argument2;

if(xReturn)
{
	return((tileX - tileY) * (TILE_W * 0.5));
}
else
{
	return((tileX + tileY) * (TILE_H * 0.5));
}