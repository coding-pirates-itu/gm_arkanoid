enum GameStates
{
    Running,
    GameOver
}

global.gameState = GameStates.Running;
global.gameScore = 0;
layer_set_visible(layer_get_id("UI_GameOver"), false);

power_ups = [o_PupSize, o_PupGlue];


function GameOver()
{
    layer_set_visible(layer_get_id("UI_InGame"), false);
    layer_set_visible(layer_get_id("UI_GameOver"), true);
    room_goto(rm_GameOver);
}