if (state == BallStates.Glued)
    exit;
    
x = xprevious;
y = yprevious;
move_contact_all(direction, speed);

switch (other.state)
{
    case BatStates.Normal:
        part_particles_burst(global.ps_HitBall, x, y, ps_HitBall);
        move_bounce_all(true);
        break;
    
    case BatStates.Sticky:
        GlueToBat();
        break;
}
