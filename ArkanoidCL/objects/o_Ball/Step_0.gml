if (y > o_Paddle.y)
{
    o_GameController.GameOver();
    // Added exit and below
    exit;
}

if (state == BallStates.Glued)
{
    x = o_Paddle.x + glued_offset_x;
    y = o_Paddle.y + glued_offset_y;
    
    if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
        state = BallStates.Flying;
        speed = init_speed;
        move_bounce_all(true);
    }
}