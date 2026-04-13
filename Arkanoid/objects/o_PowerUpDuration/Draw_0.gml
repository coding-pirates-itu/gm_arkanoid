if (global.DurationMax > 0)
{
    draw_self();
    draw_healthbar(x - 1, y + 1, x - sprite_width + 1, y + sprite_height - 1,
        global.DurationLeft / global.DurationMax * 100,
        BackColor, ForeColor, ForeColor, 0, false, false);
}