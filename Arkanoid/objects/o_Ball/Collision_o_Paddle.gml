if (state == BallStates.Glued)
    exit;
    
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
        part_particles_burst(global.ps_HitBall, x, y, ps_HitBall);
        move_bounce_all(true);
        break;
    
    case PaddleStates.Glue:
        GlueToPaddle();
        break;
}
