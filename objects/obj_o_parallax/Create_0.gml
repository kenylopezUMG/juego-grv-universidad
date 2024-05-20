var _layer_id = layer_get_id("CloseGravesBackground");
var _background_id = layer_background_get_id(_layer_id);
layer_background_blend(_background_id, close_gray);

var _layer_id = layer_get_id("FarGravesBackground");
var _background_id = layer_background_get_id(_layer_id);
layer_background_blend(_background_id, far_gray);
