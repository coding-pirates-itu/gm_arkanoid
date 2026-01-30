switch (other.object_index) {
    case o_PowerUp_Glue:
        state = BatStates.Sticky;
        break;

    case o_PowerUp_Expand:
        image_xscale = 2;
        alarm[0] = fps * other.duration;
        break;
}

instance_destroy(other);