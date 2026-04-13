// Random power ups
for (var i = 0; i < instance_number(o_BrickBase); i++) {
    if (random(100) < pup_probability) {
        brick = instance_find(o_BrickBase, i);
        pidx = irandom(array_length(power_ups) - 1);
	    brick.power_up = power_ups[pidx];
    }
}