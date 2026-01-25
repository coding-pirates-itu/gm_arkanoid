switch (state) {
	case BallStates.Glued:
        x = o_Bat.x + glued_offset_x;
        y = o_Bat.y + glued_offset_y;
        
        if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
            state = BallStates.Flying;
            speed = init_speed;
        }
        break;
    
    case BallStates.Flying:
        break;
}