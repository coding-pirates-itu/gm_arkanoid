// Changed
if (state == BallStates.Glued)
    exit;

x = xprevious;
y = yprevious;
move_contact_all(direction, speed);

if (o_Paddle.state == PaddleStates.Normal)
    move_bounce_solid(true);
else if (o_Paddle.state == PaddleStates.Glue)
    GlueToPaddle();