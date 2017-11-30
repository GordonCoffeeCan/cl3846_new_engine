/// @description Insert description here
// You can write your code in this editor

if(x < 0 - sprite_width / 2){
	instance_destroy();
}else if(x > room_width + sprite_width / 2){
	instance_destroy();
}

if(y < 0 - sprite_height / 2){
	instance_destroy();
}else if(y > room_height + sprite_height / 2){
	instance_destroy();
}