function Hit()
{
    GotHits++;
    
    if (GotHits < TotalHits) return;
        
    if (PowerUp != noone)
    {
        instance_create_layer(x, y, "Instances", PowerUp);
    }

    global.GameScore++;
    instance_destroy();
}
