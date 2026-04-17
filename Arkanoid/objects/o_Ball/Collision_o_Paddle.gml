if (state == BallStates.Glued) exit;
    
if (o_Paddle.state == PaddleStates.Startup)
{
    o_Paddle.state = PaddleStates.Normal;
}

x = xprevious;
y = yprevious;
move_contact_all(direction, speed);

switch (other.state)
{
    case PaddleStates.Normal:
    case PaddleStates.Shoot:
        part_particles_burst(global.ps_HitBall, x, y, ps_HitBall);
        move_bounce_all(true);
        audio_play_sound(snd_Hit, 1, false);
        break;
    
    case PaddleStates.Glue:
        GlueToPaddle();
        break;
}
