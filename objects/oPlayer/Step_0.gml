/// @description Player Controls
ysp += 0.1;
xsp = 0;

if keyboard_check(ord("A")) && keyboard_check(ord("D"))
{
	if _last_input == "A"
	{
		xsp = 1;
	}
	else if _last_input == "D"
	{
		xsp = -1;
	}
}
else if keyboard_check(ord("A"))
{
	_last_input = "A";
	xsp = -1;
} 
else if keyboard_check(ord("D"))
{
	_last_input = "D";
	xsp = +1;
}
else
{
	_last_input = "none";
}

if keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("1"))
{
	room_goto(0);
}
else if keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("2"))
{
	room_goto(1);
}
else if keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("3"))
{
	room_goto(2);
}
else if keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("4"))
{
	room_goto(3);
}
else if keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("5"))
{
	room_goto(4);
}

if place_meeting(x, y+1, oSolid)
{
    ysp = 0;
    if keyboard_check(vk_space)
    {
        ysp = -2;
    }
}

if place_meeting(x, y, oFlag)
{
    room_goto_next();
}

if place_meeting(x, y, oSpike)
{
	room_goto(0);
}

move_and_collide(xsp, ysp, oSolid);