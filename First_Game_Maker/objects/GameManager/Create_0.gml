/// @description Insert description here
// You can write your code in this editor

var int enemyCount = 0;

var float createEnemyTimer = 0;

var bool gameStart = false;
var bool gameOver = false;

var bool gameOverTitleShowed = false;

if(gameStart == false){
	instance_create_layer(room_width/2, room_height/2, layer, MoveTitle_Object);
}