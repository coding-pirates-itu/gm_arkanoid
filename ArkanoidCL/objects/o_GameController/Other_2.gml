global.gameScore = 0;
enum GameStates
{
    Running,
    GameOver
}
global.gameState = GameStates.Running;
layer_set_visible(layer_get_id("UI_GameOver"), false);


function GameOver()
{
    layer_set_visible(layer_get_id("UI_InGame"), false);
    layer_set_visible(layer_get_id("UI_GameOver"), true);
    room_goto(rm_GameOver);
}
