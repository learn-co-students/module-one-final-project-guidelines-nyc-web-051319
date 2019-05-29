# Will be the main game engine for our battle system
#will contain all of the round logic, pass values to operate on other class's data
# IE - Subtract player_damage from current_monster.hp
# Will also iterate the 3 battle rounds per dungeon run
def test_battle_round(current_player, current_monster)

    # Battle status for menu repopping up
    battle_over = false

    if current_player.current_hp > 0 && current_monster.hp > 0
        do_player_attack
    elsif current_player.current_hp <= 0
        player_death
    elsif current_monster.hp <= 0
        monster_death
    else
        puts "not sure whats going on here."
    end

    def do_player_attack
        while(!battle_over) # if attack menu returns true, that means we need another choise
            attack_menu
        end
    end

    def attack_menu
        fight_choice = gets.chomp
        puts "What do you want to do?"
        puts "   1. Attack with your #{current_player.weapon}"
        puts "   2. Check your status"
        puts "   3. Inspect ${current_monster.name}"
        puts "   4. Flee and abandon this dungeon"

        # 
        if fight_choice == 1
            attack_round
        elsif fight_choice == 2
            current_player.print_status
        elsif fight_choice == 3
            current_monster.inspect
        elsif fight_choice == 4
            player_flee
        else
            puts "That is not a valid command!"
        end
    end

    # Define back and forth attacks for both player and monster - Need logic still to stop if HP = 0
    def attack_round
        current_player.attack
        monster_take_damage(player_damage)
        current_monster.attack
        player_take_damage(monster_damage)
    end
    
    #Run this when monster recieves damage from player
    def monster_take_damage(player_damage)
        current_monster.hp -= player_damage
        if current_monster.hp <= 0
            monster_death
        end
    end

    # Conditional method when monster's HP is reduced to 0
    def monster_death
        battle_over = true
        puts "You have slain #{current_monster}!"
        #delete monster
    end

      #Run this when player recieves damage from monster
    def player_take_damage(monster_damage)
        current_player.current_hp -= monster_damage
        if current_player.current_hp <= 0
            player_death
        end
    end

    # Conditional method when player's HP is reduced to 0
    def player_death
        battle_over = true
        puts "Oh no! #{current_player.name} has died alone in the dark! Forgotten in the violent depths below the earth!"
        #delete player
    end

    # Method that will start chance to flee (forfieting a round of attack if failed)
    def player_flee
        puts "#{current_player.name} tried to get away ..."
        sleep(1)
        puts "..."
        sleep(1)
        puts "..."
        sleep(1)
        puts "ANNNNNDDD ....."
        sleep(1)
        #conditional for escaping. Easier to run if you're a higher level and/or monster is injured.
        if rand(0..200) > (current_player.level * 20) - current_monster.hp
            puts "SLIPPED AWAY!"
            battle_over = true
        else
            puts "couldn't escape!"
        end
    end

end