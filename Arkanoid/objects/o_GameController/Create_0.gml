enum GameStates
{
    Running,
    GameOver
}

global.ps_HitBall = part_system_create_layer("Effects", true, ps_HitBall);

power_ups = [o_PowerUp_Glue, o_PowerUp_Expand];

function BallLost()
{
    room_goto_next();
    if (room == rm_GameOver)
    {
        layer_set_visible(layer_get_id("UI_InGame"), false);
        layer_set_visible(layer_get_id("UI_GameOver"), true);
    }
}