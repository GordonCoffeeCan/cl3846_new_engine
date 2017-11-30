/// @description Insert description here
// You can write your code in this editor

var float enemyHealth = 10;
var float enemySpeed = 2;

if(instance_exists(Player_Object)){
	move_towards_point(Player_Object.x, Player_Object.y, enemySpeed);
}