obj_tv.image_index = random_range(0, 4);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
scr_sleep(50);
if (reset == 0)
{
    instance_create(x, (y + 30), obj_bangeffect);
    if ((stomped == 0) && (shot == 0))
    {
        with (obj_camera) {
            shake_mag = 5;
            shake_mag_acc = (20 / room_speed);
        }
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedead);
    }
    if ((stomped == 1) && (shot == 0))
    {
        instance_create(x, y, obj_slimedead);
        with (obj_camera) {
            shake_mag = 5;
            shake_mag_acc = (20 / room_speed);
        }
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        hsp = 0;
        vsp = 0;
    }
    if ((shot == 1) && (stomped == 0))
    {
        instance_create(x, y, obj_slimedead);
        with (obj_camera) {
            shake_mag = 20;
            shake_mag_acc = (40 / room_speed);
        }
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        instance_create(x, y, obj_slimedebris);
        hsp *= 3;
        vsp *= 3;
    }
	enemy_combo();
}