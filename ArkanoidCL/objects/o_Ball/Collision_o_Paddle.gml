if (state == BallStates.Glued)
    exit;

if (o_Paddle.state == PaddleStates.Startup)
    o_Paddle.state = PaddleStates.Normal;

x = xprevious;
y = yprevious;
move_contact_all(direction, speed);

switch (o_Paddle.state) {
	case PaddleStates.Normal:
        move_bounce_solid(true);
        break;
    case PaddleStates.Glue:
        GlueToPaddle();
        break;
    }