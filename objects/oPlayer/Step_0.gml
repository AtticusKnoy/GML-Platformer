/// @description player logic

//player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oInvisible_wall)) && (key_jump)
{
	vsp = -jumpsp
}

//horizontal collisions
if (place_meeting(x+hsp,y,oInvisible_wall))
{
	while (!place_meeting(x+sign(hsp),y,oInvisible_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//verticle collisions
if (place_meeting(x,y+vsp,oInvisible_wall))
{
	while (!place_meeting(x,y+sign(vsp),oInvisible_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;