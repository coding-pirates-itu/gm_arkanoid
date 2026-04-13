enum BallStates
{
    Glued,
    Flying
}


function GlueToPaddle()
{
    state = BallStates.Glued;
    glued_offset_x = x - o_Paddle.x;
    glued_offset_y = y - o_Paddle.y;
    speed = 0;
}

function InitBall()
{
    direction = 60;
    GlueToPaddle();
}


InitBall();