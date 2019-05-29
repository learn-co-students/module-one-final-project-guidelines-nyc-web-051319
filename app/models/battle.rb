# Will be the main game engine for our battle system
#will contain all of the round logic, pass values to operate on other class's data
# IE - Subtract player_damage from current_monster.hp
# Will also iterate the 3 battle rounds per dungeon run
def test_battle_round(current_player, current_monster)

    def round
        
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
        puts "Oh no! #{current_player.name} has died alone in the dark! Forgotten in the violent depths below the earth!"
        #delete player
    end



end