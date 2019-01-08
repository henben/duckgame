/// @description Player movement


if(keyboard_check(ord("Z"))){
    image_angle = image_angle - 2;
}
else if(keyboard_check(ord("X"))){
    image_angle = image_angle + 2;
}

if(keyboard_check(vk_space) && can_paddle){ 
    direction = image_angle;
    speed = speed + 10;
	can_paddle = false;
	alarm[0] = 25;
}

if speed != 0
{
    if abs(speed) < fric // declare this variable in a create event! it is your friction variable!
    {
         speed = 0 // if your speed is lower than friction value, declare your speed 0.
    }
    else
    {
        speed = speed - sign(speed)*fric // else, reduce your speed.
    }
 }
if speed > max_speed // declare this variable! this is your max speed!
{
     speed = max_speed;
}

x = x + current;