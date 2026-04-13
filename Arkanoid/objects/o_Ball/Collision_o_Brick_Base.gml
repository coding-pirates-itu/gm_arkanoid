x = xprevious;
y = yprevious;
move_contact_solid(direction, speed);
part_particles_burst(global.ps_HitBall, x, y, ps_HitBall);
move_bounce_solid(true);
other.Hit();

if (!instance_exists(o_Brick_Base))
{
    o_GameController.LevelWon();
}
