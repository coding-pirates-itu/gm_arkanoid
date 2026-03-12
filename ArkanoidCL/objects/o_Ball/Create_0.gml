direction = 60;
speed = init_speed;

// Added
enum BallStates
{
    Glued,
    Flying
}

// Variables
state = BallStates.Glued;
glued_offset_x = 0;
glued_offset_y = 0;

GlueToPaddle();


// Utility
function GlueToPaddle()
{
    state = BallStates.Glued;
    glued_offset_x = x - o_Paddle.x;
    glued_offset_y = y - o_Paddle.y;
    speed = 0;
}
