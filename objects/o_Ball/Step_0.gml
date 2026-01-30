if (y > o_Bat.y + o_Bat.sprite_height)
{
    o_GameController.BallLost();
    exit;
}

switch (state)
{
	case BallStates.Glued:
        x = o_Bat.x + glued_offset_x;
        y = o_Bat.y + glued_offset_y;
        
        if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
            state = BallStates.Flying;
            speed = init_speed;
            move_bounce_all(true);
        }
        break; 
    
    case BallStates.Flying:
        break;
}