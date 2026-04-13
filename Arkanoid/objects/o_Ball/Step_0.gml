if (y > o_Paddle.y + o_Paddle.sprite_height)
{
    o_GameController.BallLost();
    exit;
}

if (state == BallStates.Glued)
{
    x = o_Paddle.x + glued_offset_x;
    y = o_Paddle.y + glued_offset_y;
    
    if (keyboard_check_pressed(vk_space) ||
        mouse_check_button_pressed(mb_left) ||
        o_Paddle.state == PaddleStates.Normal)
    {
        state = BallStates.Flying;
        speed = init_speed;
        move_bounce_all(true);
    }
}

if (abs(direction - 90) < 15)
{
    direction += sign(direction - 90);
}
else if (direction < 15)
{
    direction += 1;
}
else if (direction > 360 - 15)
{
    direction -= 1;
}