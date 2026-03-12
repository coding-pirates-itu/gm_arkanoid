var pup = PowerUpChance;
var pups = 0;
var owner = self;

with (o_Brick_Base)
{
    if (random(100) < pup)
    {
        PowerUp = owner.power_ups[irandom(array_length(owner.power_ups) - 1)];
        pups++;
    }
}

show_debug_message("Created PUPs: " + string(pups));
