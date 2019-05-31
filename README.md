# Legend of Rubyerion: The Seven Paths

Welcome to the world of Rubyerion. In Legend of Rubyerion, you play as a brave warrior who must battle through a variety of dungeons. This game is a roguelike adventure, where if you lose, that character is forever lost to the depths of the dungeon.

## Starting out

### Create a Character

Every adventurer needs to etch his/her destiny so that songs and tales can be passed down from generation to generation. Provide your champions name, weapon of choice and famous battlecry, which you're known for screaming whilst charging into the fray!

Name: Name of your choosing plus titles, class, whatever!
Melee Weapon: This experience works best if you use a hand-held melee weapon
Battlecry: Something you want your character to scream into battle!

### Load a Character

If your character is lucky enough to have survived previous delves into the dungeon, and still live to tell their tale, they can be found here at the inn, ready for the next adeventure. Characters who have been slain can be visited in the graveyard.

### Explore a Dungeon

There are 7 dungeons to choose from. Each dungeon is ranked on a difficulty scale. Monsters from the easier dungeons will be easier to slay, and thus award less XP. Likewise, a harder dungeon will present a harder challenge for adventurers, but possess the highest amount of rewards and XP. 

* The 7 Paths:

![alt text](https://github.com/cchutis/module-one-final-project-guidelines-nyc-web-051319/blob/dean/app/images/01_traininggroundsx8.png)

1. Training Grounds - Difficulty: Very Easy - Level up granted: 0
First time picking up a sword? First time leaving your mom's basement? This is probably your best bet to show off those attack moves you've been practicing with a broomstick in front of the mirror while listening to the 'John Wick' original motion picture soundtrack.

![alt text](https://github.com/cchutis/module-one-final-project-guidelines-nyc-web-051319/blob/dean/app/images/02-sewerx8.png)

2. The Sewers - Difficulty: Easy - Level up granted: 1
Most heroes will find themselves starting their adventure here in the musty sewers below Rubyerion. Small, vile, bottom-feeder creatures and those git branches you -d will end up here, scavenging for fresh food...

![alt text](http://url/to/img.png)

3. Tomb of Malchor - Difficulty: Medicore - Level up granted: 2
Malchor was a mighty code-mage many centuries ago. Some say he failed his code challenge in Mod 3, and was banished to the online program. Since then he has fallen into the dark arts: Coding everything purely in Brainfuck. 

> "++[---------->+<]>.--[->+++++<]>.-[->+++<]>-.+++++++.-------.[->+++<]>--." 

                                                             -Malchor, probably.

![alt text](http://url/to/img.png)                                                             
4. Frozen Ice Cave - Difficulty: Medium - Level up granted: 3
Be sure to bring a coat and a sharp blade. and maybe some mittens. and pocket warmers. maybe even a scarf. Okay, so we're bringing alot of things, so maybe a backpack or some kind of duffle bag? Something with alot of compartments.

![alt text](http://url/to/img.png)

5. Volcanic Caverns - Difficulty: Hard - Level up granted: 4
Fire and Brimstone! Prepare for a hot affair in which many red-hot enemies await. Are you feeling warmed up yet? Don't get burned trying to fight your way to the end of this. This dungeon is lit. Literally. :fire:

![alt text](http://url/to/img.png)

6. Dragon's Lair - Difficulty: Extreme - Level up granted: 5
At the basin of Mount Eleven Broadway (the 2nd level, actually) lies an entrance way into the Dragon's Lair. Some know it as "Hopper ClassRoom". I've never been, so it may as well be the Dragon's Lair. Your mettle will be tested here.

![alt text](http://url/to/img.png)

7. Flatiron Code Challenge Chamber - Difficulty: Insane - Level up granted: 10
The final level. Fight for the glory of Rubyerion. Also just try not to mess up your relationship tables here. It can prove deadly. This dungeon HAS MANY deaths THROUGH teeth and fangs.

## Monsters

All 325 monsters are random encounters in the dungeon. Everytime you start a new run, you will be matched up with 3 monsters based on the difficulty of the dungeon you selected.

Feel free to Google some of the weirder ones if you'd like to see what these monsters look like, and learn about them!

All monsters are generated from the Dungeons & Dragons (D&D) 5th Edition API.

## Combat

Every dungeon run is 3 randomly generated monsters, based on the selected difficulty. If you complete the run, and kill all 3 monsters, You level up, increasing your stats for future runs/harder dungeons. If your HP is reduced to 0 in the dungeon, your character is slain and is gone forever. Characters can be loaded at anytime, and will retain all previous experience and stats.

Every round of combat, you have choices to make.
1. Attack Monster
  - Chance to hit the monster with your weapon and cause damage. Your Accuracy is baseline 70% chance to hit. This will increase everytime you level up.
  If you hit the monster, your damage will vary, based on the strength of your strike. Damage will be between 6 to 12 Damage at level 1. Both Values will increase everytime you level up.
2. Intimidate Monster
  - Chance to Intimidate the monster by yelling and screaming. Always has a 50% chance to scare/distract the Monster for a turn, allowing you to attempt to strike it 2 times. If this fails, the monster will be able to attack you as normal.
3. Check You Status
  - View your Stats:
    * Level, Name, Current Health/Max Health, Minimum Damage/Maximum Damage, Accuracy %, Your currently equipped weapon, and your current Battlecry. This self reflection will open yourself up to an attack from the monster.
4. Inspect Monster
  - View monster's stats
    * Monster's name, Type of monster, monster's current health, and monster's damage range per attack. This inspection will provide the enemy with an oppertunity to attack.
5. Flee Dungeon
  - If the situation is becoming grim, and you really don't want to lose the character you've put so much time and effort into, you can attempt to flee. The higher your level and/or the weaker the monster currently is will play into if you can flee or not. If successful, your character will flee the dungeon, be awarded NO levels or benefits, but will stop by his nearest inn to get some rest and reset his health for future runs. If this flee attempt fails, you open yourself up to free attacks as you try to escape.

# Overview game as project

This project was an ambitious project by us. We both love high-fantasy content, and our original app project idea eventually got so much functionality and logic added on, that it's now a turned based roguelke RPG in command line, all coded within 3 days of class.

## Special thanks

Special thanks to Rishi for being stoked on the concept and helping flesh out some of the more technical aspects of it. Special thanks to Charlie for guidance and helping us debug weird Ruby issues.

## Credits

Made with love by 
Aaron Smith and Constantine Chutis
at Flatiron School // 2019
D&D API by Adrian Padua
Pixel Art by Constantine
8-bit Music by 
Dungeons & Dragons is a registered