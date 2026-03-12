enum PaddleStates
{
    Normal,
    Glue
}

function SetSize(multiplier, duration)
{
    Reset();
    image_xscale = size_x * multiplier;
    // Added "fps"
    alarm_set(0, fps * duration);
}

function SetGlue(duration)
{
    Reset();
    state = PaddleStates.Glue;
    // Added "fps"
    alarm_set(0, fps * duration);
    image_index = 1;
}

function Reset()
{
    image_xscale = size_x;
    state = PaddleStates.Normal;
    image_index = 0;
}

state = PaddleStates.Normal;
size_x = image_xscale;