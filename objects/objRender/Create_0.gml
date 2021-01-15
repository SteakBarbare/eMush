/// @desc Map Building

layer_set_visible("FloorLayer", false);

global.shipRoomFloor = ds_grid_create(MAP_W, MAP_H);

var floorMap = layer_tilemap_get_id("FloorLayer");

srcLayerToIso("FloorLayer", global.shipRoomFloor);



