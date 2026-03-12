switch (other.object_index) {
    case o_PowerUp_Glue:
        state = BatStates.Sticky;
        alarm[1] = fps * other.duration;
        break;

    case o_PowerUp_Expand:
        image_xscale = 2;
        alarm[0] = fps * other.duration;
        break;
}

instance_destroy(other);