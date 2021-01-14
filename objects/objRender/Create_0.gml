/// @desc Map Building

layer_set_visible("FloorLayer", false);
layer_set_visible("FurnituresLayer", false);

global.shipRoomFloor = ds_grid_create(MAP_W, MAP_H);
global.shipRoomFurnitures = ds_grid_create(MAP_W, MAP_H);

var floorMap = layer_tilemap_get_id("FloorLayer");
var furnituresMap = layer_tilemap_get_id("FurnituresLayer");

srcLayerToIso("FloorLayer", global.shipRoomFloor);
srcLayerToIso("FurnituresLayer", global.shipRoomFurnitures);



