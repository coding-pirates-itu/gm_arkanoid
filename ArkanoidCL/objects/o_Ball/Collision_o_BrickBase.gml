x = xprevious;
y = yprevious;
move_bounce_all(true);
other.Hit();

if (!instance_exists(o_BrickBase)) {
    room_goto_next();
}
