/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	image_angle += 5;
}

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	image_angle -= 5;
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	playerSpeed = 5;
	motion_set(image_angle + 90, playerSpeed);
}

if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
	playerSpeed = -5;
	motion_set(image_angle + 90, playerSpeed);
}

