/// @desc Map Building

layer_set_visible("FloorLayer", false);
layer_set_visible("WallLayer", false);

global.shipRoomFloor = ds_grid_create(MAP_W, MAP_H);
global.shipRoomWall = ds_grid_create(MAP_W, MAP_H);

var floorMap = layer_tilemap_get_id("FloorLayer");
var wallMap = layer_tilemap_get_id("WallLayer");

srcLayerToIso("FloorLayer", global.shipRoomFloor);
srcLayerToIso("WallLayer", global.shipRoomWall);



