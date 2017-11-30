/// @description Insert description here
// You can write your code in this editor

if(instance_exists(Player_Object)){
	if(enemyCount < 3){
		createEnemyTimer --;
		if(createEnemyTimer <= 0){
			xNumber = random_range(-1, 1);
			yNumber = random_range(-1, 1);
		
			if(xNumber > 0 && yNumber > 0){
				posX = -50;
				posY = random_range(0, room_height);
			}else if(xNumber <= 0 && yNumber > 0){
				posX = random_range(0, room_width);
				posY = -50;
			}else if(xNumber > 0 && yNumber <= 0){
				posX = room_width + 50;
				posY = random_range(0, room_height);
			}else if(xNumber <= 0 && yNumber <= 0){
				posX = random_range(0, room_width);
				posY = room_height + 50;
			}
		
		
			instance_create_layer(posX, posY, "Instances", Enemy_1_Object);
			enemyCount ++;
			createEnemyTimer = 60;
		}
	}
}else{
	if(keyboard_check_pressed(ord("R"))){
		game_restart();
	}
}
