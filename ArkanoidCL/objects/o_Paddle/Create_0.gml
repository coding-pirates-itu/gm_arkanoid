enum PaddleStates
{
    Startup,
    Normal,
    Glue
}

function SetSize(multiplier, duration)
{
    Reset();
    image_xscale = size_x * multiplier;
    alarm_set(0, fps * duration);
}

function SetGlue(duration)
{
    Reset();
    state = PaddleStates.Glue;
    alarm_set(0, fps * duration);
    image_index = 1;
}

function Reset()
{
    image_xscale = size_x;
    state = PaddleStates.Normal;
    image_index = 0;
}

state = PaddleStates.Startup;
size_x = image_xscale;