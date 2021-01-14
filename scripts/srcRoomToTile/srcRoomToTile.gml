/// @function								srcRoomToTile(roomX, roomY, isXCoordinate);
/// @param  {real}		tileX				X coordinate of the room
/// @param  {real}		tileY				Y coordinate of the room
/// @param  {boolean}	isXCoordinate		Check which value to return
/// @description							Take room coordinate and return tile coordinates depending on a boolean

function srcRoomToTile()
{
	var roomX, roomY, isXCoordinate;
	roomX = argument[0] - (ROOM_W * 0.5);
	roomY = argument[1] - (ROOM_H * 0.25);
	isXCoordinate = argument[2];
	
	if(isXCoordinate)
	{
		return floor((roomX / (TILE_W / 2) + (roomY / (TILE_H / 2))) / 2);
	}
	else
	{
		return floor( (roomY / (TILE_H / 2) - (roomX / (TILE_W / 2))) / 2);
	}
}