# Will be the main game engine for our battle system
#will contain all of the round logic, pass values to operate on other class's data
# IE - Subtract player_damage from current_monster.hp
# Will also iterate the 3 battle rounds per dungeon run

class Battle

  def initialize(current_player, current_monster)
    @battle_over = false
    @player_turn = true
    @current_player = current_player
    @current_monster = current_monster
  end

  def begin_battle
    puts "Wait, what was that?!?!"
    sleep(2)
    puts "A #{@current_monster.name} bursts into the room!!!"
    sleep(2)
    puts "Prepare for battle..."
    sleep(2)
    while !@battle_over
      do_round
    end
    puts "The battle is over!"
  end

  def do_round
    if @player_turn
      attack_menu
    else
      monster_attack
    end
    @player_turn = !@player_turn
  end

  def attack_menu
      puts "-"*60
      puts " "
      puts "#{@current_player.name}: #{@current_player.current_hp}/#{@current_player.max_hp} HP"
      puts "#{@current_monster.name}: #{@current_monster.hp} HP"
      puts " "
      puts "-"*60
      puts " "
      puts "What do you want to do?"
      puts "   1. Attack with your #{@current_player.weapon}"
      puts "   2. Intimidate #{@current_monster.name}"
      puts "   3. Check your status"
      puts "   4. Inspect #{@current_monster.name}"
      puts "   5. Flee and abandon this dungeon"
      puts "-"*60
      fight_choice = gets.chomp

      #
      if fight_choice == "1"
          player_attack
      elsif fight_choice == "2"
          @current_player.intimidate
          if rand(1..100) > 50
            puts "#{@current_monster.name} cowers before your might!"
            sleep(2)
            attack_of_opportunity
          else
            puts "The #{@current_monster.name} seems unaffected."
            sleep(2)
          end
      elsif fight_choice == "3"
          @current_player.print_status
          sleep(2)
      elsif fight_choice == "4"
          @current_monster.inspect_monster
          sleep(2)
      elsif fight_choice == "5"
          player_flee
          sleep(2)
      else
          puts "That is not a valid command!"
      end
  end

      # Battle status for menu repopping up
      # battle_over = false

  def player_attack
    player_damage = @current_player.attack(@current_monster)
    monster_take_damage(player_damage)
    sleep(2)
  end

  def monster_attack
    monster_damage = @current_monster.attack(@current_player)
    player_take_damage(monster_damage)
    sleep(2)
  end

  def attack_of_opportunity
    player_attack
    player_attack
  end

      #Run this when monster recieves damage from player
  def monster_take_damage(damage)
      @current_monster.hp -= damage
      if @current_monster.hp <= 0
        monster_death
      end
  end

      # Conditional method when monster's HP is reduced to 0
  def monster_death
      @battle_over = true
      puts "You have slain #{@current_monster.name}!"
      #delete monster
  end

        #Run this when player recieves damage from monster
  def player_take_damage(monster_damage)
      @current_player.current_hp -= monster_damage
      if @current_player.current_hp <= 0
          player_death
      end
  end

      # Conditional method when player's HP is reduced to 0
  def player_death
      @battle_over = true
      puts "Oh no! #{@current_player.name} has died alone in the dark! Forgotten in the violent depths below the earth!"
      #delete player
  end

      # Method that will start chance to flee (forfieting a round of attack if failed)
  def player_flee
      puts "#{@current_player.name} tried to get away ..."
      sleep(1)
      puts "..."
      sleep(1)
      puts "..."
      sleep(1)
      puts "ANNNNNDDD ....."
      sleep(1)
      #conditional for escaping. Easier to run if you're a higher level and/or monster is injured.
      if rand(0..200) > (@current_player.level * 20) - @current_monster.hp
          puts "SLIPPED AWAY!"
          @battle_over = true
      else
          puts "couldn't escape!"
      end
  end


end







    # Define back and forth attacks for both player and monster - Need logic still to stop if HP = 0
