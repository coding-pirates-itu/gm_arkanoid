if (room == rm_GameOver)
{
    UiGameOver();
    exit;
}

for (var i = 0; i < instance_number(o_Brick_Base); i++)
{
    if (random(100) < PowerUpChance)
    {
        brick = instance_find(o_Brick_Base, i);
        
        if (brick.PowerUp == noone)
        {
            pidx = irandom(array_length(power_ups) - 1);
	        brick.PowerUp = power_ups[pidx];
        }
    }
}

o_Paddle.ResetPaddle(true);
global.DurationMax = 0;