global.ps_HitBall = part_system_create_layer("Effects", true, ps_HitBall);

power_ups = [o_PowerUp_Glue, o_PowerUp_Expand];


function BallLost()
{
    game_end();
}