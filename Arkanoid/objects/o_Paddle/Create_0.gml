enum PaddleStates
{
    Startup,
    Normal,
    Glue
}

function SetSize(multiplier)
{
    ResetPaddle();
    image_xscale = size_x * multiplier;
}

function SetGlue(duration)
{
    ResetPaddle();
    state = PaddleStates.Glue;
    image_index = 1;
}

function ResetPaddle(initLevel = false)
{
    image_xscale = size_x;
    if (initLevel)
    {
        state = PaddleStates.Startup;
    }
    else
    {
        state = PaddleStates.Normal;
    }
    image_index = 0;
}

size_x = image_xscale;
prev_mouse_x = mouse_x;
go_to_mouse = false;
mouse_delta = 2;