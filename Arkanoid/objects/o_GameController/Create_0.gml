enum GameStates
{
    Running,
    GameOver
}


function PowerUpDuration(duration)
{
    var frames = fps * duration;
    alarm_set(0, frames);
    global.DurationMax = frames;
    global.DurationLeft = frames;
}


function BallLost()
{
    global.Lives--;
    
    if (global.Lives <= 0)
    {
        UiGameOver();
        exit;
    }
    else
    {
        o_Ball.x = o_Paddle.x + o_Ball.glued_offset_x;
        o_Ball.y = o_Paddle.y + o_Ball.glued_offset_y;
        o_Ball.InitBall();
        o_Paddle.ResetPaddle(true);
    }
}

function LevelWon()
{
    room_goto_next();
}

function UiGameOver()
{
    if (room != rm_GameOver)
    {
        room_goto(rm_GameOver);
    }
    
    layer_set_visible(layer_get_id("UI_InGame"), false);
    layer_set_visible(layer_get_id("UI_GameOver"), true);
}


power_ups = [o_PowerUp_Glue, o_PowerUp_Expand, o_PowerUp_Shoot];
global.ps_HitBall = part_system_create_layer("Effects", true, ps_HitBall);
global.Lives = InitLives;