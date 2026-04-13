var dx = mouse_x - prev_mouse_x;
prev_mouse_x = mouse_x;

if (abs(dx) > mouse_delta)
{
    go_to_mouse = true;
}

if (go_to_mouse)
{
    if (mouse_x < x - MoveSpeed - mouse_delta)
    {
        move_contact_solid(180, MoveSpeed);
        go_to_mouse = true;
    }
    else if (mouse_x > x + MoveSpeed + mouse_delta)
    {
        move_contact_solid(0, MoveSpeed);
        go_to_mouse = true;
    }
}