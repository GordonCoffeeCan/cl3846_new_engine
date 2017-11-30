/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	image_angle += 5;
	
}

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	image_angle -= 5;
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	speed += 0.2;
	if(speed > 5){
		speed = 5;
	}
	direction = image_angle + 90;
}

if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
	speed -= 0.2;
	if(speed < -5){
		speed = -5;
	}
	direction = image_angle + 90;
}

if(keyboard_check(vk_control) && shootTimer < 1){
	instance_create_layer(x, y, "BulletLayer", Bullet_Object);
	shootTimer = 10;
}

shootTimer -= 1;

if(x < 0 - sprite_width / 2){
	x = room_width + sprite_width / 2;
}else if(x > room_width + sprite_width / 2){
	x= 0 - sprite_width / 2;
}

if(y < 0 - sprite_height / 2){
	y = room_height + sprite_height / 2;
}else if(y > room_height + sprite_height / 2){
	y= 0 - sprite_height / 2;
}