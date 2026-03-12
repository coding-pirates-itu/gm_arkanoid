function Hit()
{
    hits--;
    if (hits <= 0)
    {
        instance_destroy(self);
        global.gameScore++;
        
        if (power_up != noone)
        {
            instance_create_layer(x, y, "Instances", power_up);
        }
    }
}