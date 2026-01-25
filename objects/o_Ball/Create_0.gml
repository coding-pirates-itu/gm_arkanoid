enum BallStates
{
    Glued,
    Flying
}

// Variables
state = BallStates.Glued;
glued_offset_x = 0;
glued_offset_y = 0;

// Code
direction = 60;
GlueToBat();

// Utility
function GlueToBat()
{
    state = BallStates.Glued;
    glued_offset_x = x - o_Bat.x;
    glued_offset_y = y - o_Bat.y;
}
