function Hit()
{
    GotHits++;
    
    if (GotHits < TotalHits)
    {
        audio_play_sound(snd_Hit, 1, false);
        return;
    }
        
    if (PowerUp != noone)
    {
        instance_create_layer(x, y, "Effects", PowerUp);
    }

    global.GameScore++;
    audio_play_sound(snd_Break, 1, false);
    instance_destroy();

    if (!instance_exists(o_Brick_Base))
    {
        o_GameController.LevelWon();
    }
}