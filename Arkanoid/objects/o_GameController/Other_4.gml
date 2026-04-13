for (var i = 0; i < instance_number(o_Brick_Base); i++)
{
    if (random(100) < PowerUpChance)
    {
        brick = instance_find(o_Brick_Base, i);
        pidx = irandom(array_length(power_ups) - 1);
	    brick.PowerUp = power_ups[pidx];
    }
}

o_Paddle.ResetPaddle();
global.DurationMax = 0;