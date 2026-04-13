enum BallStates
{
    Glued,
    Flying
}

direction = 60;
GlueToPaddle();


// Utility
function GlueToPaddle()
{
    state = BallStates.Glued;
    glued_offset_x = x - o_Paddle.x;
    glued_offset_y = y - o_Paddle.y;
    speed = 0;
}