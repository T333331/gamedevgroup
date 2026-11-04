# Game Dev: Group 3

### Forest of Beasts 

## Player: 
The player is an unnamed fighter.

![sprite](https://github.com/T333331/gamedevgroup/blob/main/images/Sprite%20in%20128%20pixels.png)
![animation](https://github.com/T333331/gamedevgroup/blob/main/images/forward%20walk%20animated%20in%20128%20pixels.gif?raw=true)
![otheranimation](https://github.com/T333331/gamedevgroup/blob/main/images/sideway%20walk%20(left)%20in%20128%20pixels.gif?raw=true)
![otherotheranimation](https://github.com/T333331/gamedevgroup/blob/main/images/sideway%20walk%20(right)%20in%20128%20pixels.gif?raw=true)
![gifnumerofour](https://github.com/T333331/gamedevgroup/blob/main/images/Backward%20walk%20animated%20in%20128%20pixels.gif?raw=true)
## Goal: 
The goal of the game is for the player to kill all of the enemies that get in their way, progress through the entire forest, and to eventually defeat the boss at the end of the game. 
### Enemies:

![enemyuno](https://github.com/T333331/gamedevgroup/blob/main/images/enemy%201%20animated%20in%20128%20pixels.gif?raw=true)
![enemydos](https://github.com/T333331/gamedevgroup/blob/main/images/Jello.gif?raw=true)
![enemytres](https://github.com/T333331/gamedevgroup/blob/main/images/Zorb.gif?raw=true)

## Core action: 
The core gameplay loop is fighting enemies, picking up items/power-ups,  and progressing to the next area in the forest when all of the enemies have been killed.
## Challenge: 
The challenge of the game is a health system that decreases when the player is hit, meaning that the enemies can kill you and you would have to start over. 

![health](https://github.com/T333331/gamedevgroup/blob/main/images/health.png?raw=true)
## Feedback: 
There will be icons on the bottom half of the screen, showing a health bar that decreases when you're hit. 

![yellow](https://github.com/T333331/gamedevgroup/blob/main/images/healthyellow.png?raw=true)
![red](https://github.com/T333331/gamedevgroup/blob/main/images/healthred.png?raw=true)

If we have enough time, there will be a small inventory for items and power-ups shown on the screen as well. 
## Scope: 
Hitting and killing one enemy. 
## Perspective:
The game will be 2D, in 3rd person view. It will either be a side scroll, or have enemies coming from any direction at the player. 

## Game:
* The player’s goal is to kill all of the enemies without dying. 

* The player moves with the arrow keys, and clicks to attack. 

* The challenge in this game are enemies the player has to fight.

* Feedback is given by health bars that show both the player and enemy health.

* We should figure out how to implement the animations for attacks, and how to keep the enemies progressing naturally until you reach a boss. 


# Game Inspiration/Example:

Prince of Persia

![prince of persia](https://github.com/T333331/gamedevgroup/blob/main/images/prince%20of%20persia%20combat.gif)

________________________

## GUI Mockup: 
(Zoe Abraham) 

 ![game mockup](https://github.com/T333331/gamedevgroup/blob/main/images/GUIimage.jpg?raw=true)
_______________________
## Pitch Document: 
(Alan Huang) 

[Pitch Document (Group 3)](https://docs.google.com/document/d/1uviuY880l4IykHoEFrVYQckRX1fBgzq2PkLnaWorPt4/edit?tab=t.0)
_______________________
## Class Diagram: 
(Gideon Gordon)

![diagram](https://github.com/T333331/gamedevgroup/blob/main/images/ForestOfBeastsDiagram.jpg?raw=true)
_______________________
### Class Shells

Diana:

Responsible for the item class. This class has to give the player items and powerups to use throughout the run. It is tied to the enemy and player classes, as it drops when an enemy dies, and needs to be pick up by a player to use. 
